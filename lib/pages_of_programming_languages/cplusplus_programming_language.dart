import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/programming_language.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _cplusplusfirst =
    Uri.parse('https://www.youtube.com/watch?v=8jLOx1hD3_o');
final Uri _cplusplussecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLBlnK6fEyqRh6isJ01MBnbNpV3ZsktSyS');
final Uri _cplusplusthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLVlQHNRLflP8_DGKcMoRw-TYJJALgGu4J');
final Uri _cplusplusfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb');
final Uri _cplusplusfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLDoPjvoNmBAwy-rS6WKudwVeb_x63EzgS');
final Uri _cplusplussixth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLJzrJ6NUlRb8e5o0jGe8yHYGy2Mu17Eeg');
final Uri _cplusplusseventh = Uri.parse(
    'https://www.youtube.com/playlist?list=PLv3VqjyehAoSSzkyHmWk89hPgcVwTNouG');
final Uri _cpluspluseights = Uri.parse(
    'https://www.youtube.com/playlist?list=PLnzqK5HvcpwQ_nQt-hKGAEIDJjTJBCV02');

class CPlusPlusProgrammingLanguage extends StatefulWidget {
  const CPlusPlusProgrammingLanguage({super.key});
  static String id = 'C Plus Plus Programming Language';

  @override
  State<CPlusPlusProgrammingLanguage> createState() =>
      _CPlusPlusProgrammingLanguageState();
}

class _CPlusPlusProgrammingLanguageState
    extends State<CPlusPlusProgrammingLanguage> {
  Future<void> __cplusplusfirst() async {
    if (!await launchUrl(_cplusplusfirst)) {
      throw Exception('Could not launch $_cplusplusfirst');
    }
  }

  Future<void> __cplusplussecond() async {
    if (!await launchUrl(_cplusplussecond)) {
      throw Exception('Could not launch $_cplusplussecond');
    }
  }

  Future<void> __cplusplusthird() async {
    if (!await launchUrl(_cplusplusthird)) {
      throw Exception('Could not launch $_cplusplusthird');
    }
  }

  Future<void> __cplusplusfourth() async {
    if (!await launchUrl(_cplusplusfourth)) {
      throw Exception('Could not launch $_cplusplusfourth');
    }
  }

  Future<void> __cplusplusfifth() async {
    if (!await launchUrl(_cplusplusfifth)) {
      throw Exception('Could not launch $_cplusplusfifth');
    }
  }

  Future<void> __cplusplussixth() async {
    if (!await launchUrl(_cplusplussixth)) {
      throw Exception('Could not launch $_cplusplussixth');
    }
  }

  Future<void> __cplusplusseventh() async {
    if (!await launchUrl(_cplusplusseventh)) {
      throw Exception('Could not launch $_cplusplusseventh');
    }
  }

  Future<void> __cpluspluseights() async {
    if (!await launchUrl(_cpluspluseights)) {
      throw Exception('Could not launch $_cpluspluseights');
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
                MaterialPageRoute(builder: (context) => ProgrammingLanguages()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "C++ Programming Language",
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
              onTap: __cplusplusfirst,
              img:
                  'assets/images/programming_languages/cpluscplussinglevideo.jpg',
              title: 'freecodecamp',
              subtitle: 'English - Single Video',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cplusplussecond,
              img: 'assets/images/programming_languages/cplusplus link 2.jpg',
              title: 'Neso Academy',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cplusplusthird,
              img: 'assets/images/programming_languages/cplusplus link 3.jpg',
              title: 'Naresh i Technologies',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cplusplusfourth,
              img: 'assets/images/programming_languages/cplusplus link 4.jpg',
              title: 'by The Cherno',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cplusplusfifth,
              img: 'assets/images/programming_languages/cplusplus link 5.jpg',
              title: 'Elzero Web School',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cplusplussixth,
              img: 'assets/images/programming_languages/cplusplus link 6.jpg',
              title: 'محمد الدسوقى',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cplusplusseventh,
              img: 'assets/images/programming_languages/cplusplus link 7.jpg',
              title: 'Ali Shahin',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cpluspluseights,
              img: 'assets/images/programming_languages/cplusplus link 8.jpg',
              title: 'محمد شوشان',
              subtitle: 'Arabic',
            ),
          ],
        ),
      ),
    );
  }
}
