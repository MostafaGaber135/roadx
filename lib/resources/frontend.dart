import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/content_of_stacks/Front_End/css.dart';
import 'package:roadx/content_of_stacks/Front_End/html.dart';
import 'package:roadx/content_of_stacks/Front_End/javascript.dart';
import 'package:roadx/models/stacks.dart';
import 'package:roadx/pages/categories.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class Frontend extends StatefulWidget {
  const Frontend({super.key});
  static String id = 'Frontend';

  @override
  State<Frontend> createState() => _FrontendState();
}

class _FrontendState extends State<Frontend> {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
  ];

  void _navigateBasedOnTechnology(BuildContext context, String techName) {
    switch (techName.toLowerCase()) {
      case 'html':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HTML(),
          ),
        );
        break;
      case 'css':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CSS(),
          ),
        );
        break;
      case 'java script':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Javascript(),
          ),
        );
        break;
      default:
        log('No specific page for $techName');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Categories()),
              );
            },
            icon: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          title: const Text("Frontend", style: TextStyle(color: Colors.white)),
        ),
        body: FutureBuilder<List<dynamic>>(
          future: fetchSpecificTechnologies(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  var technology = snapshot.data?[index];
                  Color color = colors[index % colors.length];
                  return GestureDetector(
                    onTap: () =>
                        _navigateBasedOnTechnology(context, technology['name']),
                    child: CustomTimeLineTile(
                      isFirst: index == 0,
                      isLast: index == snapshot.data!.length - 1,
                      endChild: Container(
                        height: 150,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            right: BorderSide(width: 3, color: color),
                            bottom: BorderSide(width: 3, color: color),
                          ),
                          boxShadow: const [
                            BoxShadow(blurRadius: 3, color: Colors.black26),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                technology['name'],
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: color,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  technology['description'],
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      number: index + 1,
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
