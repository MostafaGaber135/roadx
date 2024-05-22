import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/cross_platform.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _dartCrossplatformfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLlxmoA0rQ-LyHW9voBdNo4gEEIh0SjG-q');
final Uri _dartCrossplatformsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLeKQz1VjpjFqqXLvQ8rTnYxZcUqEGA0dm');
final Uri _dartCrossplatformthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJIsYc9L0XBSaiiuq01JTMQ_o');
final Uri _dartCrossplatformfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PL3aG1K3LWCrdihgr1PnIrbphTyt3PZwoK');
final Uri _dartCrossplatformfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLGVaNq6mHinjCPki-3xraQdGWKVz7PhgI');
final Uri _dartCrossplatformsixth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLfxpHP1wOTEi8ZjOdGVrapEaNqjuzRGxj');

class Dart extends StatefulWidget {
  const Dart({super.key});
  static String id = 'Dart';

  @override
  State<Dart> createState() => _DartState();
}

class _DartState extends State<Dart> {
  Future<void> __dartCrossplatformfirst() async {
    if (!await launchUrl(_dartCrossplatformfirst)) {
      throw Exception('Could not launch $_dartCrossplatformfirst');
    }
  }

  Future<void> __dartCrossplatformsecond() async {
    if (!await launchUrl(_dartCrossplatformsecond)) {
      throw Exception('Could not launch $_dartCrossplatformsecond');
    }
  }

  Future<void> __dartCrossplatformthird() async {
    if (!await launchUrl(_dartCrossplatformthird)) {
      throw Exception('Could not launch $_dartCrossplatformthird');
    }
  }

  Future<void> __dartCrossplatformfourth() async {
    if (!await launchUrl(_dartCrossplatformfourth)) {
      throw Exception('Could not launch $_dartCrossplatformfourth');
    }
  }

  Future<void> __dartCrossplatformfifth() async {
    if (!await launchUrl(_dartCrossplatformfifth)) {
      throw Exception('Could not launch $_dartCrossplatformfifth');
    }
  }

  Future<void> __dartCrossplatformsixth() async {
    if (!await launchUrl(_dartCrossplatformsixth)) {
      throw Exception('Could not launch $_dartCrossplatformsixth');
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
                MaterialPageRoute(builder: (context) => const CrossPlatform()),
              );
            },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "Dart",
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
              onTap: __dartCrossplatformfirst,
              img: 'assets/images/content_of_stacks/Dart_playlist1.png',
              title: 'Smartherd',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __dartCrossplatformsecond,
              img: 'assets/images/content_of_stacks/Dart_playlist2.png',
              title: 'Flutter Teacher',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __dartCrossplatformthird,
              img: 'assets/images/content_of_stacks/Dart_playlist3.png',
              title: 'Wael abo hamza',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __dartCrossplatformfourth,
              img: 'assets/images/content_of_stacks/Dart_playlist4.png',
              title: 'Code2Start - Mohamed Fathy Taha',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __dartCrossplatformfifth,
              img: 'assets/images/content_of_stacks/Dart_playlist5.png',
              title: 'ثروت سامي | Tharwat Samy',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __dartCrossplatformsixth,
              img: 'assets/images/content_of_stacks/Dart_playlist6.png',
              title: 'حازم قرعاوي',
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
