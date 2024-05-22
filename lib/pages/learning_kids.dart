import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/nav.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _programmingkidsfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLnb0FwCbM-50UuNjpeIrdEnlSbbMK891Q');
final Uri _programmingkidssecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLzTFSn-Bzi_wguTJLHUgrJgCy42mdT-Yn');
final Uri _computerbasicsfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PL4316FC411AD077AA');
final Uri _computerbasicssecond = Uri.parse(
    'https://www.youtube.com/watch?v=W7-u_w-0zHc&list=PLqleLpAMfxGAkXyW-QIwBPYDXpxAmb5La');
final Uri _computerfundamentalsfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLSzuwmVgelNxSi7pWzRTPOSiqdXHLI0GP');
final Uri _flowchartsfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLMQ4k-hUWGNl-_4tGH-2Gq-06yZbzl5az');
final Uri _flowchartssecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLQ8QGneqFjxNnPszJsQs2qS1m0uqfXCob');

class LearningKids extends StatefulWidget {
  const LearningKids({super.key});
  static String id = 'Learning Kids';

  @override
  State<LearningKids> createState() => _LearningKidsState();
}

class _LearningKidsState extends State<LearningKids> {
  Future<void> __programmingkidsfirst() async {
    if (!await launchUrl(_programmingkidsfirst)) {
      throw Exception('Could not launch $_programmingkidsfirst');
    }
  }

  Future<void> __programmingkidssecond() async {
    if (!await launchUrl(_programmingkidssecond)) {
      throw Exception('Could not launch $_programmingkidssecond');
    }
  }

  Future<void> __computerbasicsfirst() async {
    if (!await launchUrl(_computerbasicsfirst)) {
      throw Exception('Could not launch $_computerbasicsfirst');
    }
  }

  Future<void> __computerbasicssecond() async {
    if (!await launchUrl(_computerbasicssecond)) {
      throw Exception('Could not launch $_computerbasicssecond');
    }
  }

  Future<void> __computerfundamentalsfirst() async {
    if (!await launchUrl(_computerfundamentalsfirst)) {
      throw Exception('Could not launch $_computerfundamentalsfirst');
    }
  }

  Future<void> __flowchartsfirst() async {
    if (!await launchUrl(_flowchartsfirst)) {
      throw Exception('Could not launch $_flowchartsfirst');
    }
  }

  Future<void> __flowchartssecond() async {
    if (!await launchUrl(_flowchartssecond)) {
      throw Exception('Could not launch $_flowchartssecond');
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
                MaterialPageRoute(builder: (context) => const Nav()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Learning Kids",
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
              onTap: __programmingkidsfirst,
              img: 'assets/images/content_of_stacks/kids link 1.png',
              title: 'NPStation',
              subtitle: 'Programming Courses For Kids - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __programmingkidssecond,
              img: 'assets/images/content_of_stacks/kids link 2.png',
              title: 'coding for kids',
              subtitle: 'Programming Courses For Kids - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __computerbasicsfirst,
              img: 'assets/images/content_of_stacks/kids link 3.png',
              title: 'LearnFree',
              subtitle: 'Computer Basics - English',
            ),
            const SizedBox(
              height: 10,
            ),
             CustomListTile(
              onTap: __computerbasicssecond,
              img: 'assets/images/content_of_stacks/kids link 4.png',
              title: 'Learn Coding',
              subtitle: 'Computer Basics - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __computerfundamentalsfirst,
              img: 'assets/images/content_of_stacks/kids link 5.png',
              title: 'Make It Easy Education',
              subtitle: 'Computer Fundamentals - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __flowchartsfirst,
              img: 'assets/images/content_of_stacks/kids link 6.png',
              title: 'Bijoyan Das',
              subtitle: 'Flowcharts - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __flowchartssecond,
              img: 'assets/images/content_of_stacks/kids link 7.png',
              title: 'Wondershare Edraw',
              subtitle: 'Flowcharts - English',
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
