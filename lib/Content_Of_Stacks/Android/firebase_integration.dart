import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/android.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _andNetworkingfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLS1QulWo1RIbKsL9GqxOLbToLNFFQFJW_');
final Uri _andNetworkingsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PL4cUxeGkcC9i_aLkr62adUTJi53y7OjOf');
final Uri _andNetworkingthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLF8OvnCBlEY3F9R_L67uCuFQuWULClfag');
final Uri _andNetworkingfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLb6ZzJ93PVwpsrq-WMPzdHzoI5BXfMoIj');

class FirebaseIntegration extends StatefulWidget {
  const FirebaseIntegration({super.key});
  static String id = 'Firebase Integration';

  @override
  State<FirebaseIntegration> createState() => _FirebaseIntegrationState();
}

class _FirebaseIntegrationState extends State<FirebaseIntegration> {
  Future<void> __andNetworkingfirst() async {
    if (!await launchUrl(_andNetworkingfirst)) {
      throw Exception('Could not launch $_andNetworkingfirst');
    }
  }

  Future<void> __andNetworkingsecond() async {
    if (!await launchUrl(_andNetworkingsecond)) {
      throw Exception('Could not launch $_andNetworkingsecond');
    }
  }

  Future<void> __andNetworkingthird() async {
    if (!await launchUrl(_andNetworkingthird)) {
      throw Exception('Could not launch $_andNetworkingthird');
    }
  }

  Future<void> __andNetworkingfouth() async {
    if (!await launchUrl(_andNetworkingfourth)) {
      throw Exception('Could not launch $_andNetworkingfourth');
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
                MaterialPageRoute(builder: (context) => const AndroidApplication()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Firebase Integration",
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
              onTap: __andNetworkingfirst,
              title: 'ProgrammingKnowledge',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Firebase_playlist_1.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andNetworkingsecond,
              title: 'Net Ninja',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Firebase_playlist_2.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andNetworkingthird,
              title: 'TheNewBaghdad',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Firebase_playlist_3.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andNetworkingfouth,
              title: 'Ahmed Azz',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Firebase_playlist_4.jpg',
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
