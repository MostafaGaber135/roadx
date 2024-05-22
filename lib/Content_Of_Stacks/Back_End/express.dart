import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/mern_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _expressfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLnGps7dpDRa2ZTfsonkR1VtIMif4ys9w7');
final Uri _expresssecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PL_cUvD4qzbkwp6pxx27pqgohrsP8v1Wj2');
final Uri _expressthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLfDx4cQoUNOZd0O-lHBZxWJCaIfPMI-UH');

class Express extends StatefulWidget {
  const Express({super.key});
  static String id = 'Express';

  @override
  State<Express> createState() => _ExpressState();
}

class _ExpressState extends State<Express> {
  Future<void> __expressfirst() async {
    if (!await launchUrl(_expressfirst)) {
      throw Exception('Could not launch $_expressfirst');
    }
  }

  Future<void> __expresssecond() async {
    if (!await launchUrl(_expresssecond)) {
      throw Exception('Could not launch $_expresssecond');
    }
  }

  Future<void> __expressthird() async {
    if (!await launchUrl(_expressthird)) {
      throw Exception('Could not launch $_expressthird');
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
                MaterialPageRoute(builder: (context) => const MernBackendDeveloper()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Express",
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
              onTap: __expressfirst,
              img: 'assets/images/content_of_stacks/express link 1.png',
              title: 'Coding Scratch',
              subtitle: 'Single video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __expresssecond,
              img: 'assets/images/content_of_stacks/express link 2.png',
              title: 'Anson the Developer',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __expressthird,
              img: 'assets/images/content_of_stacks/express link 3.png',
              title: 'Algorithm Academy',
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
