import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/dart.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/flutter_with_firebase.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/fundamentals_of_flutter.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/rest_api.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/sqflite.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/sql.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/state_management.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/main.dart';
import 'package:roadx/pages/categories.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class CrossPlatform extends StatelessWidget {
  const CrossPlatform({super.key});

  static String id = 'Cross-platform';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
         onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Categories()),
              );
            },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "Cross-Platform",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Dart.id);
            },
            child: CustomTimeLineTile(
              number: 1,
              isFirst: true,
              isLast: false,
              endChild: Container(
                height: 150,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    right: BorderSide(
                      width: 3,
                      color: Colors.indigo,
                    ),
                    bottom: BorderSide(
                      width: 3,
                      color: Colors.indigo,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black26,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dart',
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      Text(
                        'Dart is a modern, object-oriented programming language developed by Google, specifically designed for building user interfaces with its Flutter framework.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, FundamentalsOfFlutter.id);
            },
            child: CustomTimeLineTile(
              number: 2,
              isFirst: false,
              isLast: false,
              endChild: Container(
                height: 150,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    right: BorderSide(
                      width: 3,
                      color: Colors.blueAccent,
                    ),
                    bottom: BorderSide(
                      width: 3,
                      color: Colors.blueAccent,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black26,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fundamentals of Flutter',
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(
                        'Flutter is an open-source UI toolkit from Google, designed for developing natively compiled applications for mobile, web, and desktop using a single codebase.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ), 
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, FlutterWithFirebase.id);
            },
            child: CustomTimeLineTile(
              number: 3,
              isFirst: false,
              isLast: false,
              endChild: Container(
                height: 150,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    right: BorderSide(
                      width: 3,
                      color: Colors.pink,
                    ),
                    bottom: BorderSide(
                      width: 3,
                      color: Colors.pink,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black26,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Flutter With Firebase',
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                      Text(
                        'Flutter combined with Firebase offers a powerful duo for app development, streamlining the process from design to deployment.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, StateManagement.id);
            },
            child: CustomTimeLineTile(
              number: 4,
              isFirst: false,
              isLast: false,
              endChild: Container(
                height: 150,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    right: BorderSide(
                      width: 3,
                      color: Colors.purpleAccent,
                    ),
                    bottom: BorderSide(
                      width: 3,
                      color: Colors.purpleAccent,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black26,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'State Management',
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.purpleAccent,
                        ),
                      ),
                      Text(
                        'Flutter with state management refers to the strategies and tools used to manage the state of a Flutter application.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SQLFlutter.id);
            },
            child: CustomTimeLineTile(
              number: 5,
              isFirst: false,
              isLast: false,
              endChild: Container(
                height: 150,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    right: BorderSide(
                      width: 3,
                      color: Colors.green,
                    ),
                    bottom: BorderSide(
                      width: 3,
                      color: Colors.green,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black26,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SQL',
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        'Flutter with SQL refers to the integration of SQL-based database systems into Flutter applications for data persistence and management.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SQFLite.id);
            },
            child: CustomTimeLineTile(
              number: 6,
              isFirst: false,
              isLast: false,
              endChild: Container(
                height: 150,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    right: BorderSide(
                      width: 3,
                      color: Colors.indigoAccent,
                    ),
                    bottom: BorderSide(
                      width: 3,
                      color: Colors.indigoAccent,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black26,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SQFLite',
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.indigoAccent,
                        ),
                      ),
                      Text(
                        'Flutter with SQFLite involves using the SQFLite plugin, a Flutter package that provides a SQLite database interface for Flutter apps.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RestAPI.id);
            },
            child: CustomTimeLineTile(
              number: 7,
              isFirst: false,
              isLast: true,
              endChild: Container(
                height: 150,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    right: BorderSide(
                      width: 3,
                      color: Colors.lightGreen,
                    ),
                    bottom: BorderSide(
                      width: 3,
                      color: Colors.lightGreen,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black26,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rest API (Option)',
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen,
                        ),
                      ),
                      Text(
                        'Flutter with REST API integration is a common approach for building dynamic and data-driven applications.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
