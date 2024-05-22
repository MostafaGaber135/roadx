import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/important_skills.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _algorithmsanddatastructurefirst =
    Uri.parse('https://youtu.be/8hly31xKli0?si=zLrrFREy8CympJHK');
final Uri _algorithmsanddatastructuresecond = Uri.parse(
    'https://youtube.com/playlist?list=PLeo1K3hjS3uu_n_a__MI_KktGTLYopZ12&si=WsQ7QxTyY777tYMl');
final Uri _algorithmsanddatastructurethird = Uri.parse(
    'https://youtube.com/playlist?list=PLBZBJbE_rGRV8D7XZ08LK6z-4zPoWzu5H&si=QpUBTwZA4_ymWIYR');

class AlgorithmsAndDataStructure extends StatefulWidget {
  const AlgorithmsAndDataStructure({super.key});
  static String id = 'AlgorithmsAndDataStructure';

  @override
  State<AlgorithmsAndDataStructure> createState() =>
      _AlgorithmsAndDataStructureState();
}

class _AlgorithmsAndDataStructureState
    extends State<AlgorithmsAndDataStructure> {
  Future<void> __algorithmsanddatastructurefirst() async {
    if (!await launchUrl(_algorithmsanddatastructurefirst)) {
      throw Exception('Could not launch $_algorithmsanddatastructurefirst');
    }
  }

  Future<void> __algorithmsanddatastructuresecond() async {
    if (!await launchUrl(_algorithmsanddatastructuresecond)) {
      throw Exception('Could not launch $_algorithmsanddatastructuresecond');
    }
  }

  Future<void> __algorithmsanddatastructurethird() async {
    if (!await launchUrl(_algorithmsanddatastructurethird)) {
      throw Exception('Could not launch $_algorithmsanddatastructurethird');
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
                MaterialPageRoute(builder: (context) => const ImportantSkills()),
              );
            },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "Algorithms and Datastructure",
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
              onTap: __algorithmsanddatastructurefirst,
              img: 'assets/images/content_of_stacks/github link 1.png',
              title: 'freeCodeCamp',
              subtitle: 'Single video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __algorithmsanddatastructuresecond,
              img: 'assets/images/content_of_stacks/algorithms link 1.png',
              title: 'codebasics',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __algorithmsanddatastructurethird,
              img: 'assets/images/content_of_stacks/algorithms link 2.png',
              title: 'Dojo',
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
