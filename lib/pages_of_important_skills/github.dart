import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/important_skills.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _githubfirst =
    Uri.parse('https://www.youtube.com/watch?v=RGOj5yH7evk');
final Uri _githubsecond =
    Uri.parse('https://www.youtube.com/watch?v=fDkR0TDR9dI');
final Uri _githubthird = Uri.parse(
    'https://youtube.com/playlist?list=PLDoPjvoNmBAw4eOj58MZPakHjaO3frVMF&si=X76ZWFOqxzMDmHzY');

class Github extends StatefulWidget {
  const Github({super.key});
  static String id = 'Github';

  @override
  State<Github> createState() => _GithubState();
}

class _GithubState extends State<Github> {
  Future<void> __githubfirst() async {
    if (!await launchUrl(_githubfirst)) {
      throw Exception('Could not launch $_githubfirst');
    }
  }

  Future<void> __githubsecond() async {
    if (!await launchUrl(_githubsecond)) {
      throw Exception('Could not launch $_githubsecond');
    }
  }

  Future<void> __githubthird() async {
    if (!await launchUrl(_githubthird)) {
      throw Exception('Could not launch $_githubthird');
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
          "Github",
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
              onTap: __githubfirst,
              img: 'assets/images/content_of_stacks/github link 1.png',
              title: 'freeCodeCamp',
              subtitle: 'Single video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __githubsecond,
              img: 'assets/images/content_of_stacks/github link2.jpg',
              title: 'Ghareeb Elshaikh',
              subtitle: 'Single Video - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __githubthird,
              img: 'assets/images/content_of_stacks/github link 3.png',
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
