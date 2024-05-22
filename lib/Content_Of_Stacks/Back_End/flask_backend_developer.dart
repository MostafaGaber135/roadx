import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/django.dart';
import 'package:roadx/content_of_stacks/Back_End/flask.dart';
import 'package:roadx/content_of_stacks/Back_End/python.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/backend.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class FlaskBackendDeveloper extends StatelessWidget {
  const FlaskBackendDeveloper({super.key});
  static String id = 'Flask Backend Developer';

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
          "Flask Backend Developer",
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
            'Python',
            'Python is a versatile and widely-used programming language known for its simplicity and readability. ',
            Colors.indigo,
            1, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Flask',
            'Flask is a lightweight and versatile Python web framework used for building web applications.',
            Colors.blueAccent,
            2, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Django',
            'Django is a high-level Python web framework that enables rapid development of secure and scalable web applications.',
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
          case 'Python':
           Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Python()));
            break;
          case 'Flask':
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Flask()));
            break;
          case 'Django':
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Django()));
            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number, // Pass the number to CustomTimeLineTile
        isFirst: title == 'Python',
        isLast: title == 'Django',
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
