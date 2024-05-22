import 'package:flutter/material.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/basics_of_ui_design.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _typographyuiuxfirst = Uri.parse('https://fonts.google.com/');
final Uri _typographyuiuxsecond = Uri.parse('https://arbfonts.com/');
final Uri _typographyuiuxthird = Uri.parse(
    'https://blog.tubikstudio.com/typography-in-ui-guide-for-beginners/');
final Uri _typographyuiuxfourth = Uri.parse(
    'https://blog.prototypr.io/8-rules-for-perfect-typography-in-ui-21b37f6f23ce');

class CustomTypography extends StatefulWidget {
  const CustomTypography({super.key});
  static String id = 'Typography';

  @override
  State<CustomTypography> createState() => _CustomTypographyState();
}

class _CustomTypographyState extends State<CustomTypography> {
  Future<void> __typographyuiuxfirst() async {
    if (!await launchUrl(_typographyuiuxfirst)) {
      throw Exception('Could not launch $_typographyuiuxfirst');
    }
  }

  Future<void> __typographyuiuxsecond() async {
    if (!await launchUrl(_typographyuiuxsecond)) {
      throw Exception('Could not launch $_typographyuiuxsecond');
    }
  }

  Future<void> __typographyuiuxthird() async {
    if (!await launchUrl(_typographyuiuxthird)) {
      throw Exception('Could not launch $_typographyuiuxthird');
    }
  }

  Future<void> __typographyuiuxfourth() async {
    if (!await launchUrl(_typographyuiuxfourth)) {
      throw Exception('Could not launch $_typographyuiuxfourth');
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
          "Typography",
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
              onTap: __typographyuiuxfirst,
              img: 'assets/images/content_of_stacks/typography_link1.png',
              title: 'Google Fonts',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __typographyuiuxsecond,
              img: 'assets/images/content_of_stacks/typography_link2.png',
              title: 'arbfonts',
              subtitle: ' Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __typographyuiuxthird,
              img: 'assets/images/content_of_stacks/typography_link3.png',
              title: 'tubikstudio',
              subtitle: 'Article',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __typographyuiuxfourth,
              img: 'assets/images/content_of_stacks/typography_link4.png',
              title: 'Medium',
              subtitle: 'Article',
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
