import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/important_skills.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _apifirst =
    Uri.parse('https://youtu.be/WXsD0ZgxjRw?si=Q5xexeHUCU_nA-8Q');
final Uri _apisecond = Uri.parse(
    'https://youtube.com/playlist?list=PLJlrbbAG08uP9-vr3pA1OQU6ZN8DVlINg&si=Ff4zMqjp_tLJE0n3');
final Uri _apithird = Uri.parse(
    'https://youtube.com/playlist?list=PLWPirh4EWFpGRdVZcQCzeTXFBNSTDAdQX&si=vRtrwjvEJfDMoeB3');

class APISkills extends StatefulWidget {
  const APISkills({super.key});
  static String id = 'API Skills';

  @override
  State<APISkills> createState() => _APISkillsState();
}

class _APISkillsState extends State<APISkills> {
  Future<void> __apifirst() async {
    if (!await launchUrl(_apifirst)) {
      throw Exception('Could not launch $_apifirst');
    }
  }

  Future<void> __apisecond() async {
    if (!await launchUrl(_apisecond)) {
      throw Exception('Could not launch $_apisecond');
    }
  }

  Future<void> __apithird() async {
    if (!await launchUrl(_apithird)) {
      throw Exception('Could not launch $_apithird');
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
                MaterialPageRoute(builder: (context) => const ImportantSkills()),
              );
            },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "API Skills",
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
              onTap: __apifirst,
              img: 'assets/images/content_of_stacks/github link 1.png',
              title: 'freeCodeCamp',
              subtitle: 'Single video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __apisecond,
              img: 'assets/images/content_of_stacks/api link 2.png',
              title: 'Courses',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __apithird,
              img: 'assets/images/content_of_stacks/api link 3.png',
              title: 'Tutorialspoint',
              subtitle: 'English',
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
