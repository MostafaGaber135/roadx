import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/cross_platform.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _crossplatformSQLfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLokCZZIoIas8frkQy4ZI5DcwKXfP9jvzh');
final Uri _crossplatformSQLsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJIuicqcd1UpFUYMfWKGp7JmI');

class SQLFlutter extends StatefulWidget {
  const SQLFlutter({super.key});
  static String id = 'SQLFlutter';

  @override
  State<SQLFlutter> createState() => _SQLFlutterState();
}

class _SQLFlutterState extends State<SQLFlutter> {
  Future<void> __crossplatformSQLfirst() async {
    if (!await launchUrl(_crossplatformSQLfirst)) {
      throw Exception('Could not launch $_crossplatformSQLfirst');
    }
  }

  Future<void> __crossplatformSQLsecond() async {
    if (!await launchUrl(_crossplatformSQLsecond)) {
      throw Exception('Could not launch $_crossplatformSQLsecond');
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
          "SQL",
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
              onTap: __crossplatformSQLfirst,
              title: 'Code With Dr',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/SQL_playlist1.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformSQLsecond,
              title: 'Wael abo hamza',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/SQL_playlist2.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
