import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/important_skills.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _gitfirst = Uri.parse('https://www.youtube.com/watch?v=USjZcfj8yxE');
final Uri _gitsecond = Uri.parse(
    'https://youtube.com/playlist?list=PLDoPjvoNmBAw4eOj58MZPakHjaO3frVMF&si=xpsJtp3OxXRUQn00');

class Git extends StatefulWidget {
  const Git({super.key});
  static String id = 'Git';

  @override
  State<Git> createState() => _GitState();
}

class _GitState extends State<Git> {
  Future<void> __gitfirst() async {
    if (!await launchUrl(_gitfirst)) {
      throw Exception('Could not launch $_gitfirst');
    }
  }

  Future<void> __gitsecond() async {
    if (!await launchUrl(_gitsecond)) {
      throw Exception('Could not launch $_gitsecond');
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
          "Git",
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
              onTap: __gitfirst,
              img: 'assets/images/content_of_stacks/git link 1.png',
              title: 'Colt Steele',
              subtitle: 'Single video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __gitsecond,
              img: 'assets/images/content_of_stacks/git link 2.png',
              title: 'Elzero Web School',
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
