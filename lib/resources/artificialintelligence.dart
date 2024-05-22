import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Artificial_Intelligence/fundamentals_of_machine_learning_and_deep_learning.dart';
import 'package:roadx/content_of_stacks/Artificial_Intelligence/learn_mathematics.dart';
import 'package:roadx/content_of_stacks/Artificial_Intelligence/python_for_machine_learning_and_deep_learning.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/main.dart';
import 'package:roadx/pages/categories.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class ArtificialIntelligence extends StatelessWidget {
  const ArtificialIntelligence({super.key});
  static String id = 'Artificial Intelligence';
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
            )),
        elevation: 0.0,
        title: const Text(
          "Artificial Intelligence",
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
              Navigator.pushNamed(context, LearnMathematics.id);
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
                        'Learning Mathematics',
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),
                      Text(
                        'Learning mathematics for artificial intelligence (AI) is akin to exploring the language of the universe, as mathematics serves as the foundation upon which AI algorithms are built and optimized.',
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
              Navigator.pushNamed(
                  context, PythonForMachineLearningAndDeepLearning.id);
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
                        'Python For ML And DL',
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(
                        'Python has emerged as the go-to language for machine learning and deep learning due to its simplicity, flexibility, and vast ecosystem of libraries and tools.',
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
              Navigator.pushNamed(
                  context, FundamentalsOfMachineLearningAndDeepLearning.id);
            },
            child: CustomTimeLineTile(
              number: 3,
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
                        'Fundamentals Of ML And DL',
                        style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 22),
                          fontWeight: FontWeight.bold,
                          color: Colors.pink,
                        ),
                      ),
                      Text(
                        'Machine learning and deep learning are key components of artificial intelligence, enabling systems to learn from data and make decisions autonomously.',
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
