import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/wordpress.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _wordpressdockerfirst =
    Uri.parse('https://www.youtube.com/watch?v=pTFZFxd4hOI');
final Uri _wordpressdockersecond =
    Uri.parse('https://www.youtube.com/watch?v=pg19Z8LL06w');
final Uri _wordpressdockerthird = Uri.parse(
    'https://youtube.com/watch?v=31ieHmcTUOk&list=PL4cUxeGkcC9hxjeEtdHFNYMtCpjNBm3h7');

class Docker extends StatefulWidget {
  const Docker({super.key});
  static String id = 'Docker';

  @override
  State<Docker> createState() => _DockerState();
}

class _DockerState extends State<Docker> {
  Future<void> __wordpressdockerfirst() async {
    if (!await launchUrl(_wordpressdockerfirst)) {
      throw Exception('Could not launch $_wordpressdockerfirst');
    }
  }

  Future<void> __wordpressdockersecond() async {
    if (!await launchUrl(_wordpressdockersecond)) {
      throw Exception('Could not launch $_wordpressdockersecond');
    }
  }

  Future<void> __wordpressdockerthird() async {
    if (!await launchUrl(_wordpressdockerthird)) {
      throw Exception('Could not launch $_wordpressdockerthird');
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
                MaterialPageRoute(builder: (context) => const Wordpress()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Docker",
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
              onTap: __wordpressdockerfirst,
              img: 'assets/images/content_of_stacks/wordpress_docker_first.png',
              title: 'Programming with Mosh',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressdockersecond,
              img:
                  'assets/images/content_of_stacks/wordpress_docker_second.png',
              title: 'TechWorld with Nana',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressdockerthird,
              img: 'assets/images/content_of_stacks/wordpress_docker_third.png',
              title: 'Net Ninja',
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
