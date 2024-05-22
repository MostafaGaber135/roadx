import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/dotnet_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _sqlfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLsjUcU8CQXGFFAhJI6qTA8owv3z9jBbpd');
final Uri _sqlsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PL0b6OzIxLPbzf12lu5etX_vjN-eUxgxnr');
final Uri _sqlthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJIuicqcd1UpFUYMfWKGp7JmI');
class Sql extends StatefulWidget {
  const Sql({super.key});
  static String id = 'SQL';

  @override
  State<Sql> createState() => _SqlState();
}

class _SqlState extends State<Sql> {
  Future<void> __sqlfirst() async {
    if (!await launchUrl(_sqlfirst)) {
      throw Exception('Could not launch $_sqlfirst');
    }
  }

  Future<void> __sqlsecond() async {
    if (!await launchUrl(_sqlsecond)) {
      throw Exception('Could not launch $_sqlsecond');
    }
  }

  Future<void> __sqlthird() async {
    if (!await launchUrl(_sqlthird)) {
      throw Exception('Could not launch $_sqlthird');
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
                MaterialPageRoute(builder: (context) => const DotNetBackendDeveloper()),
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
              height: 10,
            ),
            CustomListTile(
              onTap: __sqlfirst,
              img: 'assets/images/content_of_stacks/sql link 1.png',
              title: 'QAFox',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __sqlsecond,
              img: 'assets/images/content_of_stacks/sql link 2.png',
              title: 'Wael abo hamza',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __sqlthird,
              img: 'assets/images/content_of_stacks/sql link 3.png',
              title: 'Yahoo Baba',
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
