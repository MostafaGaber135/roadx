import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Android/basics_of_java_kotlin.dart';
import 'package:roadx/content_of_stacks/Android/data_storage.dart';
import 'package:roadx/content_of_stacks/Android/firebase_integration.dart';
import 'package:roadx/content_of_stacks/Android/fundamentals_of_android_development.dart';
import 'package:roadx/content_of_stacks/Android/networking_and_api.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/categories.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class AndroidApplication extends StatelessWidget {
  const AndroidApplication({super.key});

  static String id = 'Android Application';

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
          "Android Application",
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
            'Basics of Java/Kotlin',
            'Java/Kotlin are powerful, object-oriented programming languages used for building a wide range of applications, from mobile apps to enterprise software.',
            Colors.indigo,
            1, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Fundamentals of Android Development',
            'Android Development Fundamentals: Building mobile apps for Android using Java/Kotlin and XML for UI design.',
            Colors.blueAccent,
            2, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Data storage',
            'Data storage involves the retention and organization of information in various formats, ensuring accessibility and security for future retrieval and use.',
            Colors.pink,
            3, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Networking and APIs',
            'Networking and APIs facilitate communication between different devices and systems over a network, enabling data exchange and integration of services across the internet.',
            Colors.purpleAccent,
            4, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Firebase Integration',
            'Firebase Integration enables seamless incorporation of Firebase services into applications, providing features such as real-time database, authentication, cloud storage, and more, to enhance functionality and user experience.',
            Colors.purpleAccent,
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
          case 'Basics of Java/Kotlin':
            Navigator.pushNamed(context, LearnBasicsOfJavaKotlin.id);
            break;
          case 'Fundamentals of Android Development':
            Navigator.pushNamed(context, FundamentalsOfAndroidDevelopment.id);
            break;
          case 'Data storage':
            Navigator.pushNamed(context, DataStorage.id);
            break;
          case 'Networking and APIs':
            Navigator.pushNamed(context, NetworkingAndAPIs.id);
            break;
          case 'Firebase Integration':
            Navigator.pushNamed(context, FirebaseIntegration.id);
            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number, 
        isFirst: title == 'Basics of Java/Kotlin',
        isLast: title == 'Firebase Integration',
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
