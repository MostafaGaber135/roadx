import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/cross_platform.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _crossplatformSQFLITEfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLjOFHn8uDrvT00AlU-zKJN4efsBN-OFOB');
final Uri _crossplatformSQFLITEsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJIvPg3nW8WG0HDDgpMQtUkag');
final Uri _crossplatformSQFLITEthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLhiFu-f80eo_F6XP_TkmRSCndHpPrULGk');

class SQFLite extends StatefulWidget {
  const SQFLite({super.key});
  static String id = 'SQFLite';

  @override
  State<SQFLite> createState() => _SQFLiteState();
}

class _SQFLiteState extends State<SQFLite> {
  Future<void> __crossplatformSQFLITEfirst() async {
    if (!await launchUrl(_crossplatformSQFLITEfirst)) {
      throw Exception('Could not launch $_crossplatformSQFLITEfirst');
    }
  }

  Future<void> __crossplatformSQFLITEsecond() async {
    if (!await launchUrl(_crossplatformSQFLITEsecond)) {
      throw Exception('Could not launch $_crossplatformSQFLITEsecond');
    }
  }

  Future<void> __crossplatformSQFLITEthird() async {
    if (!await launchUrl(_crossplatformSQFLITEthird)) {
      throw Exception('Could not launch $_crossplatformSQFLITEthird');
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
          "SQFLite",
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
              onTap: __crossplatformSQFLITEfirst,
              title: 'Abdul Aziz Ahwan',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/SQFLITE_playlist1.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformSQFLITEsecond,
              title: 'Wael abo hamza',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/SQFLITE_playlist2.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __crossplatformSQFLITEthird,
              title: 'Tecno U',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/SQFLITE_playlist3.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
