import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({super.key});
  static String id = 'Chatbot';

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  List<Map<String, String>> messages = [];
  TextEditingController controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  void _sendMessage(String message) {
    setState(() {
      messages.add({'message': message, 'type': 'sent'});
    });
    controller.clear();
    getBotResponse(message);
    _scrollToBottom();
  }

  void getBotResponse(String message) async {
    try {
      setState(() {
        _isLoading = true;
      });
      final res = await Dio().get(
        'https://roadxml-23f6660bd654.herokuapp.com/get',
        queryParameters: {'msg': message},
      );
      log(res.statusCode.toString());
      if (res.statusCode == 200) {
        log(res.data['msg'].toString());
        setState(() {
          messages.add({'message': res.data['msg'], 'type': 'receive'});
          _isLoading = false;
        });
        _scrollToBottom();
      }
    } on DioException catch (e) {
      log(e.message.toString());
      setState(() {
        _isLoading = false;
      });
      if (e.type == DioExceptionType.connectionError) {
        _showNoConnectionSnackbar();
      }
    }
  }

  void _showNoConnectionSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('No internet connection. Please try again later.'),
      ),
    );
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                var message = messages[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Row(
                    mainAxisAlignment: message['type'] == 'sent'
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                            color: message['type'] == 'sent'
                                ? const Color(0xFF86C3FD)
                                : Colors.green[100],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            style: const TextStyle(color: Colors.black87),
                            message['message'] ?? 'error',
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Visibility(
                  visible: !_isLoading,
                  replacement: const CircularProgressIndicator(),
                  child: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      if (controller.text.isNotEmpty) {
                        _sendMessage(controller.text);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
