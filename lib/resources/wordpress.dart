import 'package:flutter/material.dart';
import 'package:roadx/Content_Of_Stacks/Wordpress/flywheel.dart';
import 'package:roadx/Content_Of_Stacks/Wordpress/docker.dart';
import 'package:roadx/Content_Of_Stacks/Wordpress/introduction_to_wordPress.dart';
import 'package:roadx/Content_Of_Stacks/Wordpress/mamp.dart';
import 'package:roadx/Content_Of_Stacks/Wordpress/xampp.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/categories.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class Wordpress extends StatelessWidget {
  const Wordpress({super.key});
  static String id = 'Wordpress';
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
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "Wordpress",
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
            'Introduction to local by Flywheel',
            'Local by Flywheel makes WordPress development easy. It lets you create, test, and manage sites locally without manual server setup. With one-click cloning and easy sharing, collaboration is effortless. Plus, Git integration ensures efficient version control.',
            Colors.indigo,
            1, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Introduction to Docker',
            'Docker simplifies app development and deployment. It uses containers—self-sufficient units that package apps with their dependencies. Docker\'s tools and APIs make it easy to create, manage, and deploy containers, ensuring consistency across environments.',
            Colors.blueAccent,
            2, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Introduction to XAMPP',
            'XAMPP simplifies web development by bundling Apache, MySQL, PHP, and more for easy setup of a local server. Developers can create and test websites offline with its user-friendly interface. Offering flexibility and quick deployment.',
            Colors.purpleAccent,
            3, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Introduction to MAMP',
            'MAMP is a local server environment for macOS, perfect for web development with Apache, MySQL, and PHP. Its intuitive interface makes setup easy for developers of any skill level. With MAMP, creating and testing websites offline is seamless and efficient.',
            Colors.blueGrey,
            4, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Introduction to Wordpress',
            'WordPress is a versatile CMS built on PHP and MySQL, with a user-friendly interface for content management and publishing. It offers extensive customization with themes and plugins, SEO-friendly features, and responsive design options.',
            Colors.greenAccent,
            5, // Added number for the timeline
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
          case 'Introduction to local by Flywheel':
            Navigator.pushNamed(context, Flywheel.id);
            break;
          case 'Introduction to Docker':
            Navigator.pushNamed(context, Docker.id);
            break;
          case 'Introduction to XAMPP':
            Navigator.pushNamed(context, XAMPP.id);
            break;
          case 'Introduction to MAMP':
            Navigator.pushNamed(context, MAMP.id);
            break;
          case 'Introduction to Wordpress':
            Navigator.pushNamed(context, IntroductionToWordPress.id);
            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number, // Pass the number to CustomTimeLineTile
        isFirst: title == 'Introduction to local by Flywheel',
        isLast: title == 'Introduction to Wordpress',
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
