import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/ui_ux_design.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _uiuxfirst = Uri.parse('https://www.youtube.com/watch?v=RtPnVtXw6HU');
final Uri _uiuxsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLVHgQku8Z937XdTS1-Tt8DUhPoaSlL1ZO');
final Uri _uiuxthird = Uri.parse('https://www.youtube.com/watch?v=KaIzzUs2BkI');
final Uri _uiuxfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLSKqCHVeCbX5w8beQy6o0I8Sv7vXSGQbv');

class DifferenceBetweenUIUX extends StatefulWidget {
  const DifferenceBetweenUIUX({super.key});
  static String id = 'Difference Between UI & UX';

  @override
  State<DifferenceBetweenUIUX> createState() => _DifferenceBetweenUIUXState();
}

class _DifferenceBetweenUIUXState extends State<DifferenceBetweenUIUX> {
  Future<void> __uiuxfirst() async {
    if (!await launchUrl(_uiuxfirst)) {
      throw Exception('Could not launch $_uiuxfirst');
    }
  }

  Future<void> __uiuxsecond() async {
    if (!await launchUrl(_uiuxsecond)) {
      throw Exception('Could not launch $_uiuxsecond');
    }
  }

  Future<void> __uiuxthird() async {
    if (!await launchUrl(_uiuxthird)) {
      throw Exception('Could not launch $_uiuxthird');
    }
  }

  Future<void> __uiuxfourth() async {
    if (!await launchUrl(_uiuxfourth)) {
      throw Exception('Could not launch $_uiuxfourth');
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
                MaterialPageRoute(builder: (context) => const UIUXDesign()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Difference Between UI & UX",
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
              onTap: __uiuxfirst,
              img:
                  'assets/images/content_of_stacks/ui_ux_single English video.jpg',
              title: 'Jesse Showalter',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __uiuxsecond,
              img: 'assets/images/content_of_stacks/ui_ux_playlist 3.jpg',
              title: 'Intellipaat',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __uiuxthird,
              img:
                  'assets/images/content_of_stacks/ui_ux_single video arabic.jpg',
              title: 'Variable - مُتَغَيِّر',
              subtitle: 'Single Video - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __uiuxfourth,
              img: 'assets/images/content_of_stacks/ui_ux_playlist 4.jpg',
              title: 'Coding Lap',
              subtitle: 'Arabic',
            ),
          ],
        ),
      ),
    );
  }
}
