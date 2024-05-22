import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/wordpress.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _wordpresmampfirst =
    Uri.parse('https://www.youtube.com/watch?v=nEb2uMrjibU');
final Uri _wordpresmampsecond = Uri.parse(
    'https://www.youtube.com/watch?v=-3Fwyd5Okrg&list=PLXlVJXqzkgyqQJyxkb4hai3WgoPoD8osO');
final Uri _wordpresmampthird =
    Uri.parse('https://www.youtube.com/watch?v=f7GT6xWWVnM');

class MAMP extends StatefulWidget {
  const MAMP({super.key});
  static String id = 'MAMP';

  @override
  State<MAMP> createState() => _MAMPState();
}

class _MAMPState extends State<MAMP> {
  Future<void> __wordpresmampfirst() async {
    if (!await launchUrl(_wordpresmampfirst)) {
      throw Exception('Could not launch $_wordpresmampfirst');
    }
  }

  Future<void> __wordpresmampsecond() async {
    if (!await launchUrl(_wordpresmampsecond)) {
      throw Exception('Could not launch $_wordpresmampsecond');
    }
  }

  Future<void> __wordpresmampthird() async {
    if (!await launchUrl(_wordpresmampthird)) {
      throw Exception('Could not launch $_wordpresmampthird');
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
          "MAMP",
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
              onTap: __wordpresmampfirst,
              img: 'assets/images/content_of_stacks/wordpress_mamp_first.png',
              title: 'Patrick Morrow',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpresmampsecond,
              img: 'assets/images/content_of_stacks/wordpress_mamp_second.png',
              title: 'MAMP TV',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpresmampthird,
              img: 'assets/images/content_of_stacks/wordpress_mamp_third.png',
              title: 'عالم التكنولوجيا والاستثمار',
              subtitle: 'Single Video - Arabic',
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
