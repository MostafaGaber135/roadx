import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/mern_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _nodejsfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PL1BztTYDF-QPdTvgsjf8HOwO4ZVl_LhxS');
final Uri _nodejssecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLQtNtS-WfRa8OF9juY3k6WUWayMfDKHK2');
final Uri _nodejsthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLwSrRLfx1DYIo_Fj0qc0jxOgpQvtQUnC-');

class NodeJS extends StatefulWidget {
  const NodeJS({super.key});
  static String id = 'Nodejs';

  @override
  State<NodeJS> createState() => _NodeJSState();
}

class _NodeJSState extends State<NodeJS> {
  Future<void> __nodejsfirst() async {
    if (!await launchUrl(_nodejsfirst)) {
      throw Exception('Could not launch $_nodejsfirst');
    }
  }

  Future<void> __nodejssecond() async {
    if (!await launchUrl(_nodejssecond)) {
      throw Exception('Could not launch $_nodejssecond');
    }
  }

  Future<void> __nodejsthird() async {
    if (!await launchUrl(_nodejsthird)) {
      throw Exception('Could not launch $_nodejsthird');
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
          "Nodejs",
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
              onTap: __nodejsfirst,
              img: 'assets/images/content_of_stacks/nodejs link 1.png',
              title: 'procademy',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __nodejssecond,
              img: 'assets/images/content_of_stacks/nodejs link 2.png',
              title: 'codeZone',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __nodejsthird,
              img: 'assets/images/content_of_stacks/nodejs link 3.png',
              title: 'Yolio',
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
