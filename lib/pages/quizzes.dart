// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_quizzes/quiz_of_android_application.dart';
import 'package:roadx/pages_of_quizzes/quiz_of_artificial_intelligence.dart';
import 'package:roadx/pages_of_quizzes/quiz_of_backend.dart';
import 'package:roadx/pages_of_quizzes/quiz_of_cross_platform.dart';
import 'package:roadx/pages_of_quizzes/quiz_of_cyber_security.dart';
import 'package:roadx/pages_of_quizzes/quiz_of_frontend.dart';
import 'package:roadx/pages_of_quizzes/quiz_of_network.dart';
import 'package:roadx/pages_of_quizzes/quiz_of_ui_ux_design.dart';
import 'package:roadx/pages_of_quizzes/quiz_of_wordpress.dart';
import 'package:roadx/widgets/nav.dart';

class Quizzes extends StatelessWidget {
  const Quizzes({super.key});
  static String id = 'Quizzes';

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Frontend",
      "Backend",
      "Wordpress",
      "Android Application",
      "Cross Platform",
      "Network",
      "Cyber Security",
      "Artificial Intelligence",
      "UI/UX Design",
    ];
    final List<Widget> navigationTargets = [
      const QuizOfFrontend(),
      const QuizOfBackend(),
      const QuizOfWordpress(),
      const QuizOfAndroidApplication(),
      const QuizOfCrossPlatform(),
      const QuizOfNetwork(),
      const QuizOfCyberSecurity(),
      const QuizOfArtificialIntelligence(),
      const QuizOfUIUXDesign(),
    ];
    final List<String> images = [
      'assets/images/resources/frontend.jpg',
      'assets/images/resources/backend.png',
      'assets/images/resources/wordpress.png',
      'assets/images/resources/android.jpg',
      'assets/images/resources/cross_platform.jpg',
      'assets/images/resources/network.png',
      'assets/images/resources/cyber_security.jpg',
      'assets/images/resources/artificial-intellegence.jpg',
      'assets/images/resources/uii_ux_design.png',
    ];

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
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "Quizzes",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(titles.length, (index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        navigationTargets[index % navigationTargets.length]),
              );
            },
            child: Container(
              width: 500,
              margin: const EdgeInsets.all(4.0),
              child: GridTile(
                footer: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.black.withOpacity(0.5),
                  child: Text(
                    titles[index],
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                child: Image.asset(
                  images[index % images.length],
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
