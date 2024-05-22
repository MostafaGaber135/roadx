import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/extra_knowledge.dart';
import 'package:roadx/pages_of_frameworks/css_advanced_technologies.dart';
import 'package:roadx/pages_of_frameworks/css_framework.dart';
import 'package:roadx/pages_of_frameworks/javascript_framework.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class Frameworks extends StatelessWidget {
  const Frameworks({super.key});
  static String id = 'Frameworks';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ExtraKnowledge()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Frameworks",
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
            'CSS Framework',
            'A CSS framework is a pre-prepared library that is meant to allow for easier, more standards-compliant web design using the Cascading Style Sheets language.',
            Colors.indigo,
            1, 
          ),
          _buildItem(
            context,
            'Javascript Framework',
            'A JavaScript framework is a library of pre-written JavaScript code that helps developers build dynamic web applications efficiently.',
            Colors.blueAccent,
            2, 
          ),
          _buildItem(
            context,
            'CSS Advanced Technologies',
            'CSS Advanced Technologies include CSS Grid, Flexbox, CSS Variables, and functions like :is() and clamp() for enhanced layout control and responsiveness.',
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
          case 'CSS Framework':
            Navigator.pushNamed(context, CSSFramework.id);
            break;
          case 'Javascript Framework':
            Navigator.pushNamed(context, JavascriptFramework.id);
            break;
          case 'CSS Advanced Technologies':
            Navigator.pushNamed(context, CSSAdvancedTechnologies.id);
            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number, 
        isFirst: title == 'CSS Framework',
        isLast: title == 'CSS Advanced Technologies',
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