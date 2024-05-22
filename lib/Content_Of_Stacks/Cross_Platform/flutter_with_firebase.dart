import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/cross_platform.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _crossplatformFlutterfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLgGjX33Qsw-Ha_8ks9im86sLIihimuYrr');
final Uri _crossplatformFluttersecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PL4cUxeGkcC9j--TKIdkb3ISfRbJeJYQwC');
final Uri _crossplatformFlutterthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJIvHhxhB21YzzeimEEzzAz6g');
final Uri _crossplatformFlutterfourth = Uri.parse(
    'https://youtube.com/playlist?list=PL3aG1K3LWCrewoZI7C1lZW4VGy5aXR36V');

class FlutterWithFirebase extends StatefulWidget {
  const FlutterWithFirebase({super.key});
  static String id = 'Flutter With Firebase';

  @override
  State<FlutterWithFirebase> createState() => _FlutterWithFirebaseState();
}

class _FlutterWithFirebaseState extends State<FlutterWithFirebase> {
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
          "Flutter With Firebase",
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
              title: 'Raja Yogan',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Firebase_playlist1.png',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformFluttersecond,
              title: 'Net Ninja',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Firebase_playlist2.png',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformFlutterthird,
              title: 'Wael abo hamza',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Firebase_playlist3.png',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformFlutterfouth,
              title: 'Code2Start - Mohamed Fathy Taha',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Firebase_playlist4.png',
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
