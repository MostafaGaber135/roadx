import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/laravel_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _mysqlfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLsjUcU8CQXGFFAhJI6qTA8owv3z9jBbpd');
final Uri _mysqlsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PL0b6OzIxLPbzf12lu5etX_vjN-eUxgxnr');
final Uri _mysqlthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJIuicqcd1UpFUYMfWKGp7JmI');

class MySql extends StatefulWidget {
  const MySql({super.key});
  static String id = 'MySql';

  @override
  State<MySql> createState() => _MySqlState();
}

class _MySqlState extends State<MySql> {
  Future<void> __mysqlfirst() async {
    if (!await launchUrl(_mysqlfirst)) {
      throw Exception('Could not launch $_mysqlfirst');
    }
  }

  Future<void> __mysqlsecond() async {
    if (!await launchUrl(_mysqlsecond)) {
      throw Exception('Could not launch $_mysqlsecond');
    }
  }

  Future<void> __mysqlthird() async {
    if (!await launchUrl(_mysqlthird)) {
      throw Exception('Could not launch $_mysqlthird');
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
                MaterialPageRoute(builder: (context) => const LaravelBackendDeveloper()),
              );
            },
          
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "MySQL",
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
              onTap: __mysqlfirst,
              img: 'assets/images/content_of_stacks/mysql link 1.png',
              title: 'freeCodeCamp',
              subtitle: 'QAFox',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __mysqlsecond,
              img: 'assets/images/content_of_stacks/mysql link 2.png',
              title: 'Yahoo Baba',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __mysqlthird,
              img: 'assets/images/content_of_stacks/mysql link 3.png',
              title: 'Wael abo hamza',
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
