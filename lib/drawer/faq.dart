import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/drawer/settings.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});
  static String id = 'FAQ';
  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
           onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "FAQ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: const Column(
        children: [
          ExpansionTile(
            title: Text("What is Roadx?"),
            children: [
              ListTile(
                  title: Text(
                      'Roadx is an innovative education app revolutionizing personalized learning with adaptive lessons, interactive content, and collaborative features for students of all levels.')),
            ],
          ),
          ExpansionTile(
            title: Text("What does Roadx do?"),
            children: [
              ListTile(
                  title: Text(
                      'Roadx personalizes learning through adaptive lessons, interactive content, and collaboration features, revolutionizing education for students.')),
            ],
          ),
          ExpansionTile(
            title: Text("Why should i use Roadx?"),
            children: [
              ListTile(
                  title: Text(
                      'Use Roadx for customized learning and engaging lessons, optimizing your educational progress.')),
            ],
          ),
        ],
      ),
    );
  }
}
