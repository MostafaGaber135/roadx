import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/programming_language.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri _javafirst =
    Uri.parse('https://www.youtube.com/playlist?list=PLBlnK6fEyqRjKA_NuK9mHmlk0dZzuP1P5');
final Uri _javasecond = Uri.parse('https://www.youtube.com/playlist?list=PLsyeobzWxl7pe_IiTfNyr55kwJPWbgxB5');
final Uri _javathird = Uri.parse('https://www.youtube.com/playlist?list=PLS1QulWo1RIbfTjQvTdj8Y6yyq4R7g-Al');
    final Uri _javafourth = Uri.parse('https://www.youtube.com/playlist?list=PL1DUmTEdeA6K7rdxKiWJq6JIxTvHalY8f');
final Uri _javafifth = Uri.parse('https://www.youtube.com/playlist?list=PLCInYL3l2AajYlZGzU_LVrHdoouf8W6ZN');
final Uri _javasixth = Uri.parse('https://www.youtube.com/playlist?list=PLLVmUqYuyQNYMFObvYujnbuA_su4fdVvc');
class JavaProgrammingLanguage extends StatefulWidget {
  const JavaProgrammingLanguage({super.key});
  static String id = 'Java Programming Language';

  @override
  State<JavaProgrammingLanguage> createState() => _JavaProgrammingLanguageState();
}

class _JavaProgrammingLanguageState extends State<JavaProgrammingLanguage> {
  Future<void> __javafirst() async {
    if (!await launchUrl(_javafirst)) {
      throw Exception('Could not launch $_javafirst');
    }
  }

  Future<void> __javasecond() async {
    if (!await launchUrl(_javasecond)) {
      throw Exception('Could not launch $_javasecond');
    }
  }

  Future<void> __javathird() async {
    if (!await launchUrl(_javathird)) {
      throw Exception('Could not launch $_javathird');
    }
  }
  Future<void> __javafourth() async {
    if (!await launchUrl(_javafourth)) {
      throw Exception('Could not launch $_javafourth');
    }
  }

  Future<void> __javafifth() async {
    if (!await launchUrl(_javafifth)) {
      throw Exception('Could not launch $_javafifth');
    }
  }

  Future<void> __javasixth() async {
    if (!await launchUrl(_javasixth)) {
      throw Exception('Could not launch $_javasixth');
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
          "Java Programming Language",
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
              onTap: __javafirst,
              img:
                  'assets/images/programming_languages/java link 1.jpg',
              title: 'Neso Academy',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javasecond,
              img:
                  'assets/images/programming_languages/java link 2.jpg',
              title: 'Telusko',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javathird,
              img:
                  'assets/images/programming_languages/java link 3.jpg',
              title: 'ProgrammingKnowledge',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javafourth,
              img:
                  'assets/images/programming_languages/java link 1 arabic.jpg',
              title: 'محمد الدسوقى',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javafifth,
              img:
                  'assets/images/programming_languages/java link 2 arabic.jpg',
              title: 'Adel Nasim',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javasixth,
              img:
                  'assets/images/programming_languages/java link 3 arabic.jpg',
              title: 'عالم البرمجة',
              subtitle: 'Arabic',
            ),
          ],
        ),
      ),
    );
  }
}

