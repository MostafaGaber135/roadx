import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/csharp.dart';
import 'package:roadx/content_of_stacks/Back_End/dotnet.dart';
import 'package:roadx/content_of_stacks/Back_End/sql.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/backend.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class DotNetBackendDeveloper extends StatelessWidget {
  const DotNetBackendDeveloper({super.key});
  static String id = '.Net Backend Developer';

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
          ".Net Backend Developer",
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
            'C#',
            'C# is a versatile and powerful programming language commonly used for backend development in various applications, particularly in the Microsoft ecosystem.',
            Colors.indigo,
            1, // Added number for the timeline
          ),
          _buildItem(
            context,
            '.Net',
            '.NET is a powerful and versatile framework developed by Microsoft for building a wide range of applications, including backend systems.',
            Colors.blueAccent,
            2, // Added number for the timeline
          ),
          _buildItem(
            context,
            'SQL',
            'A SQL backend typically refers to a backend system that utilizes a relational database management system (RDBMS) to store and manage data using structured query language (SQL).',
            Colors.pink,
            3, // Added number for the timeline
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
          case 'C#':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Csharp()));

            break;
          case '.Net':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DotNet()));

            break;
          case 'SQL':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Sql()));

            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number,
        isFirst: title == 'C#',
        isLast: title == 'SQL',
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
