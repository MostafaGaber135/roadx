import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/laravel.dart';
import 'package:roadx/content_of_stacks/Back_End/mysql.dart';
import 'package:roadx/content_of_stacks/Back_End/php.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/backend.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class LaravelBackendDeveloper extends StatelessWidget {
  const LaravelBackendDeveloper({super.key});

  static String id = 'Laravel Backend Developer';

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
          "Laravel Backend Developer",
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
            'PHP',
            'PHP is a popular server-side scripting language designed primarily for web development but also used as a general-purpose programming language.',
            Colors.indigo,
            1, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Laravel',
            'Laravel is an open-source PHP web framework, designed for the development of web applications following the model-view-controller (MVC) architectural pattern.',
            Colors.blueAccent,
            2, // Added number for the timeline
          ),
          _buildItem(
            context,
            'MySQL',
            'MySQL is a widely-used open-source relational database management system (RDBMS) that relies on structured query language (SQL) for managing and manipulating relational databases. ',
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
    int number, // Added parameter for the number of the timeline
  ) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case 'PHP':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const PHP()));

            break;
          case 'Laravel':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Laravel()));

            break;
          case 'MySQL':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MySql()));

            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number, // Pass the number to CustomTimeLineTile
        isFirst: title == 'PHP',
        isLast: title == 'MySQL',
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
