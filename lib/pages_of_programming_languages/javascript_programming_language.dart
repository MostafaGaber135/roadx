import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/programming_language.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _javascriptfirst =
    Uri.parse('https://www.youtube.com/watch?v=PkZNo7MFNFg');
final Uri _javascriptsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLOmL3sL-afbRVTvedkIrQcDwg2UY0JGTF');
final Uri _javascriptthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLGjplNEQ1it_oTvuLRNqXfz_v_0pq6unW');
final Uri _javascriptfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLqkLaKB2GJhWXV9rcarwvn06ISlL_9mPQ');
final Uri _javascriptfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLknwEmKsW8OuTqUDaFRBiAViDZ5uI3VcE');
final Uri _javascriptsixth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLDoPjvoNmBAx3kiplQR_oeDqLDBUDYwVv');
final Uri _javascriptseventh = Uri.parse(
    'https://www.youtube.com/playlist?list=PLYyqC4bNbCIeLEjcSPO61bsGPKEvYceb0');

class JavaScriptProgrammingLanguage extends StatefulWidget {
  const JavaScriptProgrammingLanguage({super.key});
  static String id = 'JavaScript Programming Language';

  @override
  State<JavaScriptProgrammingLanguage> createState() =>
      _JavaScriptProgrammingLanguageState();
}

class _JavaScriptProgrammingLanguageState
    extends State<JavaScriptProgrammingLanguage> {
  Future<void> __javascriptfirst() async {
    if (!await launchUrl(_javascriptfirst)) {
      throw Exception('Could not launch $_javascriptfirst');
    }
  }

  Future<void> __javascriptsecond() async {
    if (!await launchUrl(_javascriptsecond)) {
      throw Exception('Could not launch $_javascriptsecond');
    }
  }

  Future<void> __javascriptthird() async {
    if (!await launchUrl(_javascriptthird)) {
      throw Exception('Could not launch $_javascriptthird');
    }
  }

  Future<void> __javascriptfourth() async {
    if (!await launchUrl(_javascriptfourth)) {
      throw Exception('Could not launch $_javascriptfourth');
    }
  }

  Future<void> __javascriptfifth() async {
    if (!await launchUrl(_javascriptfifth)) {
      throw Exception('Could not launch $_javascriptfifth');
    }
  }

  Future<void> __javascriptsixth() async {
    if (!await launchUrl(_javascriptsixth)) {
      throw Exception('Could not launch $_javascriptsixth');
    }
  }

  Future<void> __javascriptseventh() async {
    if (!await launchUrl(_javascriptseventh)) {
      throw Exception('Could not launch $_javascriptseventh');
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
          "Javascript Programming Language",
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
              onTap: __javascriptfirst,
              img: 'assets/images/programming_languages/javascript link 1.png',
              title: 'freecodecamp',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javascriptsecond,
              img: 'assets/images/programming_languages/javascript link 2.png',
              title: 'The Coding Classroom',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javascriptthird,
              img: 'assets/images/programming_languages/javascript link 3.png',
              title: 'Shradha Khapra',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javascriptfourth,
              img: 'assets/images/programming_languages/javascript link 4.png',
              title: 'CoderLipi',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javascriptfifth,
              img: 'assets/images/programming_languages/javascript link 5.png',
              title: 'Abdelrahman Gamal',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javascriptsixth,
              img: 'assets/images/programming_languages/javascript link 6.png',
              title: 'Elzero Web School',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javascriptseventh,
              img: 'assets/images/programming_languages/javascript link 7.png',
              title: 'أكاديمية ترميز',
              subtitle: 'Arabic',
            ),
          ],
        ),
      ),
    );
  }
}
