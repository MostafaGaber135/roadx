import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/express.dart';
import 'package:roadx/content_of_stacks/Back_End/mongodb.dart';
import 'package:roadx/content_of_stacks/Back_End/nodejs.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/backend.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class MernBackendDeveloper extends StatelessWidget {
  const MernBackendDeveloper({super.key});

  static String id = 'Mern Backend Developer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Backend()),
              );
            },
        
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "Mern Backend Developer",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        children: [
          _buildItem(
            context,
            'Nodejs',
            'A Node.js backend refers to the server-side component of a web application developed using the Node.js runtime environment. It enables developers to execute JavaScript code on the server, handling tasks such as processing requests, accessing databases, and generating responses.',
            Colors.indigo,
            1,
          ),
          _buildItem(
            context,
            'Express',
            'An Express backend refers to the server-side component of a web application built using the Express framework in Node.js. It handles incoming HTTP requests, processes them, and generates appropriate responses.',
            Colors.blueAccent,
            2, 
          ),
          _buildItem(
            context,
            'MongoDB',
            'A MongoDB backend refers to the server-side component of a web application that utilizes MongoDB as its database system. MongoDB is a NoSQL database known for its flexible, document-oriented data model.',
            Colors.pink,
            3,
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
    BuildContext context,
    String title,
    String description,
    Color color,
    int number,
  ) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case 'Nodejs':
            Navigator.pushNamed(context, NodeJS.id);
            break;
          case 'Express':
            Navigator.pushNamed(context, Express.id);
            break;
          case 'MongoDB':
            Navigator.pushNamed(context, MongoDB.id);
            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number,
        isFirst: title == 'Nodejs',
        isLast: title == 'MongoDB',
        endChild: Container(
          height: 150,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              right: BorderSide(
                width: 3,
                color: color,
              ),
              bottom: BorderSide(
                width: 3,
                color: color,
              ),
            ),
            boxShadow: const [
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
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                Flexible(
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
