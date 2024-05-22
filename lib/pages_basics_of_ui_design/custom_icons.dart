import 'package:flutter/material.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/basics_of_ui_design.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _iconsuiuxfirst = Uri.parse('https://www.flaticon.com/');
final Uri _iconsuiuxsecond = Uri.parse('https://icons8.com/');
final Uri _iconsuiuxthird = Uri.parse('https://www.iconfinder.com/');
final Uri _iconsuiuxfourth = Uri.parse('https://freeicons.io/');
final Uri _iconsuiuxfifth = Uri.parse('https://feathericons.com/');

class CustomIcons extends StatefulWidget {
  const CustomIcons({super.key});
  static String id = 'Icons';

  @override
  State<CustomIcons> createState() => _CustomIconsState();
}

class _CustomIconsState extends State<CustomIcons> {
  Future<void> __iconsuiuxfirst() async {
    if (!await launchUrl(_iconsuiuxfirst)) {
      throw Exception('Could not launch $_iconsuiuxfirst');
    }
  }

  Future<void> __iconsuiuxsecond() async {
    if (!await launchUrl(_iconsuiuxsecond)) {
      throw Exception('Could not launch $_iconsuiuxsecond');
    }
  }

  Future<void> __iconsuiuxthird() async {
    if (!await launchUrl(_iconsuiuxthird)) {
      throw Exception('Could not launch $_iconsuiuxthird');
    }
  }

  Future<void> __iconsuiuxfourth() async {
    if (!await launchUrl(_iconsuiuxfourth)) {
      throw Exception('Could not launch $_iconsuiuxfourth');
    }
  }

  Future<void> __iconsuiuxfifth() async {
    if (!await launchUrl(_iconsuiuxfifth)) {
      throw Exception('Could not launch $_iconsuiuxfifth');
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
          "Icons",
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
              onTap: __iconsuiuxfirst,
              img: 'assets/images/content_of_stacks/icons_link1.png',
              title: 'flaticon',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __iconsuiuxsecond,
              img: 'assets/images/content_of_stacks/icons_link2.png',
              title: 'icons8',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __iconsuiuxthird,
              img: 'assets/images/content_of_stacks/icons_link3.png',
              title: 'iconfinder',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __iconsuiuxfourth,
              img: 'assets/images/content_of_stacks/icons_link4.png',
              title: 'freeicons',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __iconsuiuxfifth,
              img: 'assets/images/content_of_stacks/icons_link5.png',
              title: 'feathericons',
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
