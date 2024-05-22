import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/cross_platform.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _crossplatformRESTAPIfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLFyjjoCMAPtzgITDreXNNkSWLKbd1wf51');
final Uri _crossplatformRESTAPIsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLXbYsh3rUPSzuLcZsIkpDmftSQbFmUq9x');
final Uri _crossplatformRESTAPIthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJItcqJJgyCpA7Wv_YL-ii6Dl');
final Uri _crossplatformRESTAPIfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PL3aG1K3LWCre6DIC2amKlXjn_kd2P6zE9');

class RestAPI extends StatefulWidget {
  const RestAPI({super.key});
  static String id = 'Rest API';

  @override
  State<RestAPI> createState() => _RestAPIState();
}

class _RestAPIState extends State<RestAPI> {
  Future<void> __crossplatformRESTAPIfirst() async {
    if (!await launchUrl(_crossplatformRESTAPIfirst)) {
      throw Exception('Could not launch $_crossplatformRESTAPIfirst');
    }
  }

  Future<void> __crossplatformRESTAPIsecond() async {
    if (!await launchUrl(_crossplatformRESTAPIsecond)) {
      throw Exception('Could not launch $_crossplatformRESTAPIsecond');
    }
  }

  Future<void> __crossplatformRESTAPIthird() async {
    if (!await launchUrl(_crossplatformRESTAPIthird)) {
      throw Exception('Could not launch $_crossplatformRESTAPIthird');
    }
  }

  Future<void> __crossplatformRESTAPIfourth() async {
    if (!await launchUrl(_crossplatformRESTAPIfourth)) {
      throw Exception('Could not launch $_crossplatformRESTAPIfourth');
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
          "Rest API",
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
              onTap: __crossplatformRESTAPIfirst,
              title: 'The Tech Brothers',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/restAPI_playlist1.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformRESTAPIsecond,
              title: 'Nitish Kumar Singh',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/restAPI_playlist2.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformRESTAPIthird,
              title: 'Wael abo hamza',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/restAPI_playlist3.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformRESTAPIfourth,
              title: 'Code2Start - Mohamed Fathy Taha',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/restAPI_playlist4.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
