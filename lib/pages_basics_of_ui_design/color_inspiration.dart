import 'package:flutter/material.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/basics_of_ui_design.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _colorinspirationuiuxfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLEiEAq2VkUULzCiDV5VyF7zR6zoDIT_eH');
final Uri _colorinspirationuiuxsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLJOFJ3Ok_iduObD_9dHwiYp804oZwpHze');
final Uri _colorinspirationuiuxthird =
    Uri.parse('https://www.youtube.com/watch?v=wHCauzqO3kk');
final Uri _colorinspirationuiuxfourth = Uri.parse(
    'https://99designs.com/blog/tips/the-7-step-guide-to-understanding-color-theory/');

final Uri _colorinspirationuiuxfifth = Uri.parse(
    'https://www.interaction-design.org/literature/topics/color-theory');

final Uri _colorinspirationuiuxsixth = Uri.parse('https://coolors.co/');

final Uri _colorinspirationuiuxseventh = Uri.parse('http://colormind.io/');

class ColorInspiration extends StatefulWidget {
  const ColorInspiration({super.key});
  static String id = 'Color Inspiration';

  @override
  State<ColorInspiration> createState() => _ColorInspirationState();
}

class _ColorInspirationState extends State<ColorInspiration> {
  Future<void> __colorinspirationuiuxfirst() async {
    if (!await launchUrl(_colorinspirationuiuxfirst)) {
      throw Exception('Could not launch $_colorinspirationuiuxfirst');
    }
  }

  Future<void> __colorinspirationuiuxsecond() async {
    if (!await launchUrl(_colorinspirationuiuxsecond)) {
      throw Exception('Could not launch $_colorinspirationuiuxsecond');
    }
  }

  Future<void> __colorinspirationuiuxthird() async {
    if (!await launchUrl(_colorinspirationuiuxthird)) {
      throw Exception('Could not launch $_colorinspirationuiuxthird');
    }
  }

  Future<void> __colorinspirationuiuxfourth() async {
    if (!await launchUrl(_colorinspirationuiuxfourth)) {
      throw Exception('Could not launch $_colorinspirationuiuxfourth');
    }
  }

  Future<void> __colorinspirationuiuxfifth() async {
    if (!await launchUrl(_colorinspirationuiuxfifth)) {
      throw Exception('Could not launch $_colorinspirationuiuxfifth');
    }
  }

  Future<void> __colorinspirationuiuxsixth() async {
    if (!await launchUrl(_colorinspirationuiuxsixth)) {
      throw Exception('Could not launch $_colorinspirationuiuxsixth');
    }
  }

  Future<void> __colorinspirationuiuxseventh() async {
    if (!await launchUrl(_colorinspirationuiuxseventh)) {
      throw Exception('Could not launch $_colorinspirationuiuxseventh');
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
          "Color Inspiration",
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
              onTap: __colorinspirationuiuxfirst,
              img: 'assets/images/content_of_stacks/colorinspiration_link1.jpg',
              title: 'Simplilearn',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __colorinspirationuiuxsecond,
              img: 'assets/images/content_of_stacks/colorinspiration_link2.jpg',
              title: 'NNgroup',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __colorinspirationuiuxthird,
              img: 'assets/images/content_of_stacks/colorinspiration_link3.jpg',
              title: 'Nour Design',
              subtitle: ' Single Video - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __colorinspirationuiuxfourth,
              img: 'assets/images/content_of_stacks/colorinspiration_link4.jpg',
              title: '99designs',
              subtitle: 'Article',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __colorinspirationuiuxfifth,
              img: 'assets/images/content_of_stacks/colorinspiration_link5.jpg',
              title: 'interaction-design',
              subtitle: 'Article',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __colorinspirationuiuxsixth,
              img: 'assets/images/content_of_stacks/colorinspiration_link6.jpg',
              title: 'coolors',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __colorinspirationuiuxseventh,
              img: 'assets/images/content_of_stacks/colorinspiration_link7.jpg',
              title: 'colormind',
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
