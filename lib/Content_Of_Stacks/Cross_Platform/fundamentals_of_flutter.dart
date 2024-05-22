import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/cross_platform.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _crossplatformFlutterfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ');
final Uri _crossplatformFluttersecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLlxmoA0rQ-Lw6tAs2fGFuXGP13-dWdKsB');
final Uri _crossplatformFlutterthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJIvtIXjAiX15wcyNv-LOWZa9');
final Uri _crossplatformFlutterfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PL3aG1K3LWCrejzY86JLKfjw-hThXYSf_1');
final Uri _crossplatformFlutterfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLw6Y5u47CYq47oDw63bMqkq06fjuoK_GJ');

class FundamentalsOfFlutter extends StatefulWidget {
  const FundamentalsOfFlutter({super.key});
  static String id = 'Fundamentals Of Flutter';

  @override
  State<FundamentalsOfFlutter> createState() => _FundamentalsOfFlutterState();
}

class _FundamentalsOfFlutterState extends State<FundamentalsOfFlutter> {
  Future<void> __flutterDartfirst() async {
    if (!await launchUrl(_crossplatformFlutterfirst)) {
      throw Exception('Could not launch $_crossplatformFlutterfirst');
    }
  }

  Future<void> __crossplatformFluttersecond() async {
    if (!await launchUrl(_crossplatformFluttersecond)) {
      throw Exception('Could not launch $_crossplatformFluttersecond');
    }
  }

  Future<void> __crossplatformFlutterthird() async {
    if (!await launchUrl(_crossplatformFlutterthird)) {
      throw Exception('Could not launch $_crossplatformFlutterthird');
    }
  }

  Future<void> __crossplatformFlutterfouth() async {
    if (!await launchUrl(_crossplatformFlutterfourth)) {
      throw Exception('Could not launch $_crossplatformFlutterfourth');
    }
  }

  Future<void> __crossplatformFlutterfifth() async {
    if (!await launchUrl(_crossplatformFlutterfifth)) {
      throw Exception('Could not launch $_crossplatformFlutterfifth');
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
            )),
        elevation: 0.0,
        title: const Text(
          "Fundamentals Of Flutter",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __flutterDartfirst,
              title: 'Net Ninja',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Flutter_playlist1.png',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformFluttersecond,
              title: 'Smartherd',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Flutter_playlist2.png',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformFlutterthird,
              title: 'Wael abo hamza',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Flutter_playlist3.png',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformFlutterfouth,
              title: 'Code2Start - Mohamed Fathy Taha',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Flutter_playlist4.png',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformFlutterfifth,
              title: 'Ammar Alkhatib',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Flutter_playlist5.png',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
