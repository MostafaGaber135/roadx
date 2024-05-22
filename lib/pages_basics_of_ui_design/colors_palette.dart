import 'package:flutter/material.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/basics_of_ui_design.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _colorspaletteuiuxfirst = Uri.parse('https://colorhunt.co/');
final Uri _colorspaletteuiuxsecond = Uri.parse('https://webgradients.com/');
final Uri _colorspaletteuiuxthird = Uri.parse('https://mycolor.space/');

class ColorsPalette extends StatefulWidget {
  const ColorsPalette({super.key});
  static String id = 'Colors Palette';

  @override
  State<ColorsPalette> createState() => _ColorsPaletteState();
}

class _ColorsPaletteState extends State<ColorsPalette> {
  Future<void> __colorspaletteuiuxfirst() async {
    if (!await launchUrl(_colorspaletteuiuxfirst)) {
      throw Exception('Could not launch $_colorspaletteuiuxfirst');
    }
  }

  Future<void> __colorspaletteuiuxsecond() async {
    if (!await launchUrl(_colorspaletteuiuxsecond)) {
      throw Exception('Could not launch $_colorspaletteuiuxsecond');
    }
  }

  Future<void> __colorspaletteuiuxthird() async {
    if (!await launchUrl(_colorspaletteuiuxthird)) {
      throw Exception('Could not launch $_colorspaletteuiuxthird');
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
          "Colors Palette",
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
              onTap: __colorspaletteuiuxfirst,
              img: 'assets/images/content_of_stacks/colorspalette_link1.png',
              title: 'colorhunt',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __colorspaletteuiuxsecond,
              img: 'assets/images/content_of_stacks/colorspalette_link2.png',
              title: 'webgradients',
              subtitle: ' Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __colorspaletteuiuxthird,
              img: 'assets/images/content_of_stacks/colorspalette_link3.png',
              title: 'mycolor',
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
