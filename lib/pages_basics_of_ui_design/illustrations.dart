// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/basics_of_ui_design.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _illustrationsuiuxfirst = Uri.parse('https://www.vecteezy.com/');
final Uri _illustrationsuiuxsecond = Uri.parse('https://www.drawkit.com/');
final Uri _illustrationsuiuxthird = Uri.parse('https://illustation.io/');

class Illustrations extends StatefulWidget {
  const Illustrations({super.key});
  static String id = 'Illustrations';

  @override
  State<Illustrations> createState() => _IllustrationsState();
}

class _IllustrationsState extends State<Illustrations> {
  Future<void> __illustrationsuiuxfirst() async {
    if (!await launchUrl(_illustrationsuiuxfirst)) {
      throw Exception('Could not launch $_illustrationsuiuxfirst');
    }
  }

  Future<void> __illustrationsuiuxsecond() async {
    if (!await launchUrl(_illustrationsuiuxsecond)) {
      throw Exception('Could not launch $_illustrationsuiuxsecond');
    }
  }

  Future<void> __illustrationsuiuxthird() async {
    if (!await launchUrl(_illustrationsuiuxthird)) {
      throw Exception('Could not launch $_illustrationsuiuxthird');
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
                MaterialPageRoute(builder: (context) =>  BasicsOfUIDesign()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Illustrations",
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
              onTap: __illustrationsuiuxfirst,
              img: 'assets/images/content_of_stacks/illustrations_link1.png',
              title: 'vecteezy',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __illustrationsuiuxsecond,
              img: 'assets/images/content_of_stacks/illustrations_link2.png',
              title: 'drawkit',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __illustrationsuiuxthird,
              img: 'assets/images/content_of_stacks/illustrations_link3.png',
              title: 'illustation',
              subtitle: 'Website',
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
