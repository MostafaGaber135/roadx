// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/basics_of_ui_design.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _photouiuxfirst = Uri.parse('https://www.freepik.com/');
final Uri _photouiuxsecond = Uri.parse('https://www.pexels.com/');
final Uri _photouiuxthird =
    Uri.parse('https://www.shutterstock.com/search/pixabay?kw=');
final Uri _photouiuxfourth = Uri.parse('https://unsplash.com/');
final Uri _photouiuxfifth = Uri.parse('https://www.reshot.com/');
final Uri _photouiuxsixth = Uri.parse('https://www.pinterest.com/');
final Uri _photouiuxseventh = Uri.parse('https://www.erase.bg/');

class Photos extends StatefulWidget {
  const Photos({super.key});
  static String id = 'Photos';

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  Future<void> __photouiuxfirst() async {
    if (!await launchUrl(_photouiuxfirst)) {
      throw Exception('Could not launch $_photouiuxfirst');
    }
  }

  Future<void> __photouiuxsecond() async {
    if (!await launchUrl(_photouiuxsecond)) {
      throw Exception('Could not launch $_photouiuxsecond');
    }
  }

  Future<void> __photouiuxthird() async {
    if (!await launchUrl(_photouiuxthird)) {
      throw Exception('Could not launch $_photouiuxthird');
    }
  }

  Future<void> __photouiuxfourth() async {
    if (!await launchUrl(_photouiuxfourth)) {
      throw Exception('Could not launch $_photouiuxfourth');
    }
  }

  Future<void> __photouiuxfifth() async {
    if (!await launchUrl(_photouiuxfifth)) {
      throw Exception('Could not launch $_photouiuxfifth');
    }
  }

  Future<void> __photouiuxsixth() async {
    if (!await launchUrl(_photouiuxsixth)) {
      throw Exception('Could not launch $_photouiuxsixth');
    }
  }

  Future<void> __photouiuxseventh() async {
    if (!await launchUrl(_photouiuxseventh)) {
      throw Exception('Could not launch $_photouiuxseventh');
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
          "Photos",
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
              onTap: __photouiuxfirst,
              img: 'assets/images/content_of_stacks/photo_link1.png',
              title: 'freepik',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __photouiuxsecond,
              img: 'assets/images/content_of_stacks/photo_link2.png',
              title: 'pexels',
              subtitle: ' Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __photouiuxthird,
              img: 'assets/images/content_of_stacks/photo_link3.png',
              title: 'shutterstock',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __photouiuxfourth,
              img: 'assets/images/content_of_stacks/photo_link4.png',
              title: 'unsplash',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __photouiuxfifth,
              img: 'assets/images/content_of_stacks/photo_link5.png',
              title: 'reshot',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __photouiuxsixth,
              img: 'assets/images/content_of_stacks/photo_link6.png',
              title: 'pinterest',
              subtitle: 'Website',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __photouiuxseventh,
              img: 'assets/images/content_of_stacks/photo_link7.png',
              title: 'erase',
              subtitle: 'If the image has the included element - Website',
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
