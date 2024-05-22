import 'package:flutter/material.dart';
import 'package:roadx/pages/Quizzes.dart';
import 'package:roadx/pages/categories.dart';
import 'package:roadx/pages/documentation.dart';
import 'package:roadx/pages/extra_knowledge.dart';
import 'package:roadx/pages/learning_kids.dart';
import 'package:roadx/pages/programming_language.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});
  static String id = 'Pages';

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  List<Icon> pagesIcons = [
    const Icon(Icons.category, color: Colors.white, size: 30),
    const Icon(Icons.document_scanner, color: Colors.white, size: 30),
    const Icon(Icons.emoji_objects, color: Colors.white, size: 30),
    const Icon(Icons.quiz, color: Colors.white, size: 30),
    const Icon(Icons.data_object, color: Colors.white, size: 30),
    const Icon(Icons.source, color: Colors.white, size: 30),
  ];

  List pagesNames = [
    "Categories",
    "Documentation",
    "Extra Knowledge",
    "Quizzes",
    "Programming Languages",
    "Learning Kids",
  ];

  List<Color> pagesColors = [
    const Color.fromARGB(255, 182, 1, 1),
    const Color.fromARGB(255, 25, 70, 184),
    const Color.fromARGB(255, 62, 2, 84),
    const Color.fromARGB(255, 69, 73, 68),
    const Color.fromARGB(255, 21, 170, 68),
    const Color.fromARGB(255, 220, 29, 185),
  ];

  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const Categories(),
      const Documentation(),
      ExtraKnowledge(),
      const Quizzes(),
      ProgrammingLanguages(),
      const LearningKids(),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          GridView.builder(
            itemCount: pagesNames.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.9,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => pages[index]));
                        },
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: pagesColors[index],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: pagesIcons[index],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Text(
                      pagesNames[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
