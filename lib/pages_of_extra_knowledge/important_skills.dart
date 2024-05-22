import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/extra_knowledge.dart';
import 'package:roadx/pages_of_important_skills/algorithms_and_datastructure.dart';
import 'package:roadx/pages_of_important_skills/api.dart';
import 'package:roadx/pages_of_important_skills/git.dart';
import 'package:roadx/pages_of_important_skills/github.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class ImportantSkills extends StatelessWidget {
  const ImportantSkills({super.key});
  static String id = 'Important Skills';
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
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "Important Skills",
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
            'Git',
            'It is a distributed version control system used for tracking changes in source code during software development. It allows multiple developers to collaborate on projects and keeps track of changes, enabling them to revert to previous versions, merge changes from different contributors, and maintain a complete history of the project.',
            Colors.indigo,
            1,
          ),
          _buildItem(
            context,
            'Github',
            'It is a platform that provides hosting for Git repositories and adds additional features such as issue tracking, collaboration tools, and continuous integration. It\'s widely used by developers and teams to manage their code, collaborate on projects, and contribute to open-source software. GitHub is not Git itself but rather a service built around Git to enhance its functionality.',
            Colors.blueAccent,
            2,
          ),
          _buildItem(
            context,
            'Algorithm and Datastructure',
            'Data structures are ways of organizing and storing data in a computer. Common data structures include arrays, linked lists, stacks, queues, trees, and graphs. ',
            Colors.pink,
            3,
          ),
          _buildItem(
            context,
            'API',
            'APIs are mechanisms that enable two software components to communicate with each other using a set of definitions and protocols.',
            Colors.purpleAccent,
            4,
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
          case 'Git':
            Navigator.pushNamed(context, Git.id);
            break;
          case 'Github':
            Navigator.pushNamed(context, Github.id);
            break;
          case 'Algorithm and Datastructure':
            Navigator.pushNamed(context, AlgorithmsAndDataStructure.id);
            break;
          case 'API':
            Navigator.pushNamed(context, APISkills.id);
            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number,
        isFirst: title == 'Git',
        isLast: title == 'API',
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
