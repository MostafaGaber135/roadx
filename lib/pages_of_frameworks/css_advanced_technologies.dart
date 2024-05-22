import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/frameworks.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

// Sass
final Uri _sassfirst = Uri.parse(
    'https://youtube.com/playlist?list=PL4cUxeGkcC9jxJX7vojNVK-o8ubDZEcNb&si=21yP_9u-1cdMwagW');
final Uri _sasssecond = Uri.parse(
    'https://youtube.com/playlist?list=PL4-IK0AVhVjMYRhK9vRPatSlb-9r0aKgh&si=V4gZqj_Ta7vpoS_4');
final Uri _sassthird = Uri.parse(
    'https://youtube.com/playlist?list=PLDoPjvoNmBAzlpyFHOaB3b-eubmF0TAV2&si=NfFjXduwZipIkEM_');

// Less
final Uri _lessfirst = Uri.parse(
    'https://youtube.com/playlist?list=PL6gx4Cwl9DGCshbAx1JpBtNoKh8iKAAiy&si=c032mi60sJxkwszK');
final Uri _lesssecond = Uri.parse(
    'https://youtube.com/playlist?list=PLLAZ4kZ9dFpNmzIb3XQi5QSFiEpK-UxUg&si=459W0BCfWBsXocoC');

class CSSAdvancedTechnologies extends StatefulWidget {
  const CSSAdvancedTechnologies({super.key});
  static String id = 'CSSAdvancedTechnologies';

  @override
  State<CSSAdvancedTechnologies> createState() =>
      _CSSAdvancedTechnologiesState();
}

class _CSSAdvancedTechnologiesState extends State<CSSAdvancedTechnologies> {
  // Sass
  Future<void> __sassfirst() async {
    if (!await launchUrl(_sassfirst)) {
      throw Exception('Could not launch $_sassfirst');
    }
  }

  Future<void> __sasssecond() async {
    if (!await launchUrl(_sasssecond)) {
      throw Exception('Could not launch $_sasssecond');
    }
  }

  Future<void> __sassthird() async {
    if (!await launchUrl(_sassthird)) {
      throw Exception('Could not launch $_sassthird');
    }
  }

  // Less
  Future<void> __lessfirst() async {
    if (!await launchUrl(_lessfirst)) {
      throw Exception('Could not launch $_lessfirst');
    }
  }

  Future<void> __lesssecond() async {
    if (!await launchUrl(_lesssecond)) {
      throw Exception('Could not launch $_lesssecond');
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
                MaterialPageRoute(builder: (context) =>  const Frameworks()),
              );
            },

            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "CSS Advanced Technologies",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            // Sass
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __sassfirst,
              img: 'assets/images/frameworks/sass link 1.png',
              title: 'Net Ninja',
              subtitle: 'For Sass - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __sasssecond,
              img: 'assets/images/frameworks/sass link 2.png',
              title: 'Kevin Powell',
              subtitle: 'For Sass - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __sassthird,
              img: 'assets/images/frameworks/sass link 3.png',
              title: 'Elzero Web School',
              subtitle: 'For Sass - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            // Less
            CustomListTile(
              onTap: __lessfirst,
              img: 'assets/images/frameworks/less link 1.png',
              title: 'thenewboston',
              subtitle: 'For Less CSS - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __lesssecond,
              img: 'assets/images/frameworks/less link 2.png',
              title: 'Giraffe Academy',
              subtitle: 'For Less CSS - English',
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
