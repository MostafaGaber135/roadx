
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:roadx/widgets/custom_list_tile_for_api.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/models/technologies.dart';
import 'package:url_launcher/url_launcher.dart';

class Javascript extends StatefulWidget {
  const Javascript({super.key});

  static String id = 'Javascript';

  @override
  State<Javascript> createState() => _JavascriptState();
}

class _JavascriptState extends State<Javascript> {
  late Future<Technology> futureTechnology;

  @override
  void initState() {
    super.initState();
    futureTechnology =
        fetchTechnology(6); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "Javascript",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder<Technology>(
        future: futureTechnology,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            final technology = snapshot.data;
            return ListView.builder(
              itemCount: technology?.videos.length,
              itemBuilder: (context, index) {
                final video = technology?.videos[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: CustomListTileForAPI(
                    onTap: () {
                      _launchURL(video?.video);
                    },
                    img: video?.image ?? '',
                    title: video?.instructor ?? '',
                    subtitle: video?.language ?? '',
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text("No data available"));
          }
        },
      ),
    );
  }

void _launchURL(String? url) async {
  if (url != null) {
    try {
      final uri = Uri.parse(url);
      await launchUrl(uri);
    } catch (e) {
      log("Error launching URL: $e");
      throw 'Could not launch $url';
    }
  } else {
    throw 'Invalid URL: $url';
  }
}

}
