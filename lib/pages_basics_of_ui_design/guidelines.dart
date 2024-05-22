import 'package:flutter/material.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/basics_of_ui_design.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _guidelinesuiuxfirst =
    Uri.parse('https://m2.material.io/design/guidelines-overview');

class Guidelines extends StatefulWidget {
  const Guidelines({super.key});
  static String id = 'Guidelines';

  @override
  State<Guidelines> createState() => _GuidelinesState();
}

class _GuidelinesState extends State<Guidelines> {
  Future<void> __guidelinesuiuxfirst() async {
    if (!await launchUrl(_guidelinesuiuxfirst)) {
      throw Exception('Could not launch $_guidelinesuiuxfirst');
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
          "Guidelines",
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
              onTap: __guidelinesuiuxfirst,
              img: 'assets/images/content_of_stacks/guidelines_link 1.png',
              title: 'MATERIAL DESIGN',
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
