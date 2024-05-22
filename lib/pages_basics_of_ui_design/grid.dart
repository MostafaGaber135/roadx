import 'package:flutter/material.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/basics_of_ui_design.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _griduiuxfirst =
    Uri.parse('https://www.youtube.com/watch?v=pxN8w-ywSuc');

class Grid extends StatefulWidget {
  const Grid({super.key});
  static String id = 'Grid';

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  Future<void> __griduiuxfirst() async {
    if (!await launchUrl(_griduiuxfirst)) {
      throw Exception('Could not launch $_griduiuxfirst');
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
          "Grid",
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
              onTap: __griduiuxfirst,
              img: 'assets/images/content_of_stacks/grid_link1.jpg',
              title: 'Antonija Pek',
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
