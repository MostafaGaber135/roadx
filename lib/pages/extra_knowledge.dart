import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/frameworks.dart';
import 'package:roadx/pages_of_extra_knowledge/certificates.dart';
import 'package:roadx/pages_of_extra_knowledge/important_skills.dart';
import 'package:roadx/pages_of_extra_knowledge/knowledge.dart';
import 'package:roadx/pages_of_extra_knowledge/recommended_websites.dart';
import 'package:roadx/pages_of_extra_knowledge/templates.dart';
import 'package:roadx/pages_of_extra_knowledge/tools.dart';
import 'package:roadx/widgets/nav.dart';

class ExtraKnowledge extends StatelessWidget {
  ExtraKnowledge({super.key});
  static String id = 'Extra Knowledge';

  final List<String> gridTitles = [
    "Certificates",
    "Templates",
    "Important Skills",
    "Tools",
    "Frameworks",
    'Recommended Websites',
    'Knowledge',
  ];

  final List<String> imagePaths = [
    'assets/images/certificates.png',
    'assets/images/templates.png',
    'assets/images/important skills.jpg',
    'assets/images/tools.jpg',
    'assets/images/frameworks.jpg',
    'assets/images/Recommended Websites.jpg',
    'assets/images/knowledge.jpg',
  ];

  final List<Widget> navigationTargets = [
    const Certificates(),
     Templates(),
    const ImportantSkills(),
    const Tools(),
    const Frameworks(),
    const RecommendedWebsites(),
    const Knowledge(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
           onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Nav()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Extra Knowledge",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(gridTitles.length, (index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => navigationTargets[index]),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(4.0),
              child: GridTile(
                footer: Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: Text(
                      gridTitles[index],
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                child: Image.asset(
                  imagePaths[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
