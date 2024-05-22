import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/extra_knowledge.dart';
import 'package:roadx/pages_of_templates/android_applications_templates.dart';
import 'package:roadx/pages_of_templates/backend_templates.dart';
import 'package:roadx/pages_of_templates/crossplatform_templates.dart';
import 'package:roadx/pages_of_templates/frontend_templates.dart';
import 'package:roadx/pages_of_templates/network_templates.dart';
import 'package:roadx/pages_of_templates/ui_ux_design_templates.dart';
import 'package:roadx/pages_of_templates/wordpress_templates.dart';

class Templates extends StatelessWidget {
  Templates({super.key});
  static String id = 'Templates';
  final List<String> gridTitles = [
    "Frontend",
    "Backend",
    "Wordpress",
    "Android Application",
    "Crossplatform",
    'Network',
    'UI UX DESIGN',
  ];

  final List<String> imagePaths = [
    'assets/images/resources/frontend.jpg',
    'assets/images/resources/backend.png',
    'assets/images/resources/wordpress.png',
    'assets/images/resources/android.jpg',
    'assets/images/resources/cross_platform.jpg',
    'assets/images/resources/network.png',
    'assets/images/resources/uii_ux_design.png',
  ];
  final List<Widget> navigationTargets = [
    const FrontEndTemplates(),
    const BackEndTemplates(),
    const WordpressTemplates(),
    const AndroidTemplates(),
    const CrossplatformTemplates(),
    const NetworkTemplates(),
    const UIUXDesignTemplates(),
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
                MaterialPageRoute(builder: (context) =>  ExtraKnowledge()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Templates",
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
