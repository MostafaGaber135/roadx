import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_programming_languages/cplusplus_programming_language.dart';
import 'package:roadx/pages_of_programming_languages/csharp_programming_language.dart';
import 'package:roadx/pages_of_programming_languages/java_programming_language.dart';
import 'package:roadx/pages_of_programming_languages/javascript_programming_language.dart';
import 'package:roadx/pages_of_programming_languages/python_programming_language.dart';
import 'package:roadx/widgets/nav.dart';

class ProgrammingLanguages extends StatelessWidget {
  ProgrammingLanguages({super.key});
  static String id = 'Programming Languages';

  final List<String> gridTitles = ["Java", "C++", "C#", "Python", "Javascript"];

  final List<String> imagePaths = [
    'assets/images/programming_languages/java.jpg',
    'assets/images/programming_languages/911_c_logo.jpg',
    'assets/images/programming_languages/CSharp.png',
    'assets/images/programming_languages/python.png',
    'assets/images/programming_languages/javascript.png',
  ];

  final List<Widget> navigationTargets = [
    const JavaProgrammingLanguage(),
    const CPlusPlusProgrammingLanguage(),
    const CSharpProgrammingLanguage(),
    const PythonProgrammingLanguage(),
    const JavaScriptProgrammingLanguage(),
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
          "Programming Languages",
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
