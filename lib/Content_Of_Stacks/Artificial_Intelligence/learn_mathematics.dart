import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/artificialintelligence.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _learnmathematicsfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLRDl2inPrWQW1QSWhBU0ki-jq_uElkh2a');

class LearnMathematics extends StatefulWidget {
  const LearnMathematics({super.key});
  static String id = 'Learn Mathematics';

  @override
  State<LearnMathematics> createState() => _LearnMathematicsState();
}

class _LearnMathematicsState extends State<LearnMathematics> {
  Future<void> __learnmathematicsfirst() async {
    if (!await launchUrl(_learnmathematicsfirst)) {
      throw Exception('Could not launch $_learnmathematicsfirst');
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
                MaterialPageRoute(builder: (context) => const ArtificialIntelligence()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Learn Mathematics",
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
              onTap: __learnmathematicsfirst,
              img: 'assets/images/content_of_stacks/learnmathematics.png',
              title: 'Jon Krohn',
              subtitle: 'English',
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
