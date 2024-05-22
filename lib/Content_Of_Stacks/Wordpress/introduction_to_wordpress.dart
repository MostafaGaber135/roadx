// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/wordpress.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _wordpressintroductionfirst =
    Uri.parse('https://www.youtube.com/watch?v=09gj5gM4V98&t=233s');
final Uri _wordpressintroductionsecond =
    Uri.parse('https://www.youtube.com/watch?v=JBqJwJCk9fE');
final Uri _wordpressintroductionthird = Uri.parse(
    'https://youtube.com/watch?v=-t5WNFPoCCE&list=PLQOGKy2nPhxlEVP4RBVrBoXPL6mZNZv5L');
final Uri _wordpressintroductionfourth = Uri.parse(
    'https://www.youtube.com/watch?v=ctEAYHFcbHk&list=PLDoPjvoNmBAwCNR-UIRft5YuVlZKrYh20');
final Uri _wordpressintroductionfifth = Uri.parse(
    'https://www.youtube.com/watch?v=lgaWUhnbHT8&list=PLzhWJrmO-SPUKBLpakqPvru3UYg0n2CvL');

class IntroductionToWordPress extends StatefulWidget {
  const IntroductionToWordPress({super.key});
  static String id = 'introduction to WordPress';

  @override
  State<IntroductionToWordPress> createState() =>
      _IntroductionToWordPressState();
}

class _IntroductionToWordPressState extends State<IntroductionToWordPress> {
  Future<void> __wordpressintroductionfirst() async {
    if (!await launchUrl(_wordpressintroductionfirst)) {
      throw Exception('Could not launch $_wordpressintroductionfirst');
    }
  }

  Future<void> __wordpressintroductionsecond() async {
    if (!await launchUrl(_wordpressintroductionsecond)) {
      throw Exception('Could not launch $_wordpressintroductionsecond');
    }
  }

  Future<void> __wordpresintroductionthird() async {
    if (!await launchUrl(_wordpressintroductionthird)) {
      throw Exception('Could not launch $_wordpressintroductionthird');
    }
  }

  Future<void> __wordpressintroductionfourh() async {
    if (!await launchUrl(_wordpressintroductionfourth)) {
      throw Exception('Could not launch $_wordpressintroductionfourth');
    }
  }

  Future<void> __wordpressintroductionfifth() async {
    if (!await launchUrl(_wordpressintroductionfifth)) {
      throw Exception('Could not launch $_wordpressintroductionfifth');
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
          "Introduction to wordpresss",
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
              onTap: __wordpressintroductionfirst,
              img: 'assets/images/content_of_stacks/intro_wordpress_first.png',
              title: 'Skilllot',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressintroductionsecond,
              img: 'assets/images/content_of_stacks/intro_wordpress_second.png',
              title: 'Learnit Training',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpresintroductionthird,
              img: 'assets/images/content_of_stacks/intro_wordpress_third.png',
              title: 'Azharul Rafy',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressintroductionfourh,
              img: 'assets/images/content_of_stacks/intro_wordpress_fourth.png',
              title: 'Elzero Web School',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressintroductionfifth,
              img: 'assets/images/content_of_stacks/intro_wordpress_fifth.png',
              title: 'Abd AbuGhazaleh - عبد ابوغزالة',
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
