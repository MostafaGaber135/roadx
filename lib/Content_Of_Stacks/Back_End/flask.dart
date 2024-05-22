import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/flask_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _flaskfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLS1QulWo1RIZ6OujqIAXmLR3xsDn_ENHI');
final Uri _flasksecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PL6X8IkNltYY_MgJNuEX-S1OABlAGOVUUw');

class Flask extends StatefulWidget {
  const Flask({super.key});
  static String id = 'Flask';

  @override
  State<Flask> createState() => _FlaskState();
}

class _FlaskState extends State<Flask> {
  Future<void> __flaskfirst() async {
    if (!await launchUrl(_flaskfirst)) {
      throw Exception('Could not launch $_flaskfirst');
    }
  }

  Future<void> __flasksecond() async {
    if (!await launchUrl(_flasksecond)) {
      throw Exception('Could not launch $_flasksecond');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FlaskBackendDeveloper()),
              );
            },
         
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Flask",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __flaskfirst,
              img: 'assets/images/content_of_stacks/flask link 1.png',
              title: 'ProgrammingKnowledge',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __flasksecond,
              img: 'assets/images/content_of_stacks/flask link 2.png',
              title: 'Pythonic',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
