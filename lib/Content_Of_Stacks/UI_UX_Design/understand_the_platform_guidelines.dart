import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/ui_ux_design.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _platformuiuxfirst =
    Uri.parse('https://www.youtube.com/watch?v=Abj65tkSblQ');
final Uri _platformuiuxsecond =
    Uri.parse('https://www.youtube.com/watch?v=vBHh_yVJXKE');
final Uri _platformuiuxthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLR74Ng-6aEfBDx2L-IPSR3qU5ujnA62gC');
final Uri _platformuiuxfourth =
    Uri.parse('https://www.youtube.com/watch?v=A3-le6iaaLY');

class UnderstandThePlatformGuidelines extends StatefulWidget {
  const UnderstandThePlatformGuidelines({super.key});
  static String id = 'understand the platform guidelines that design makes';

  @override
  State<UnderstandThePlatformGuidelines> createState() =>
      _UnderstandThePlatformGuidelinesState();
}

class _UnderstandThePlatformGuidelinesState
    extends State<UnderstandThePlatformGuidelines> {
  Future<void> __platformuiuxfirst() async {
    if (!await launchUrl(_platformuiuxfirst)) {
      throw Exception('Could not launch $_platformuiuxfirst');
    }
  }

  Future<void> __platformuiuxsecond() async {
    if (!await launchUrl(_platformuiuxsecond)) {
      throw Exception('Could not launch $_platformuiuxsecond');
    }
  }

  Future<void> __platformuiuxthird() async {
    if (!await launchUrl(_platformuiuxthird)) {
      throw Exception('Could not launch $_platformuiuxthird');
    }
  }

  Future<void> __platformuiuxfourth() async {
    if (!await launchUrl(_platformuiuxfourth)) {
      throw Exception('Could not launch $_platformuiuxfourth');
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
          "understand the platform guidelines that design makes",
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
              onTap: __platformuiuxfirst,
              img: 'assets/images/content_of_stacks/platform_link1.png',
              title: 'Dev And Design',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __platformuiuxsecond,
              img: 'assets/images/content_of_stacks/platform_link2.png',
              title: 'Pierluigi Giglio',
              subtitle: ' Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __platformuiuxthird,
              img: 'assets/images/content_of_stacks/platform_link3.png',
              title: 'Platform Engineering',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __platformuiuxfourth,
              img: 'assets/images/content_of_stacks/platform_link4.png',
              title: 'أصيل | uxAseel',
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
