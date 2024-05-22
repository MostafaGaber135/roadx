import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/programming_language.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _pythonfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PL-osiE80TeTt2d9bfVyTiXJA-UTHn6WwU');
final Uri _pythonsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLu0W_9lII9agwh1XjRt242xIpHhPT2llg');
final Uri _pythonthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLGjplNEQ1it8-0CmoljS5yeV-GlKSUEt0');
final Uri _pythonfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLuXY3ddo_8nzrO74UeZQVZOb5-wIS6krJ');
final Uri _pythonfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLDoPjvoNmBAyE_gei5d18qkfIe-Z8mocs');
final Uri _pythonsixth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLknwEmKsW8OsG8dnisr_-2WGyx7lpgGEE');

class PythonProgrammingLanguage extends StatefulWidget {
  const PythonProgrammingLanguage({super.key});
  static String id = 'Python Programming Language';

  @override
  State<PythonProgrammingLanguage> createState() =>
      _PythonProgrammingLanguageState();
}

class _PythonProgrammingLanguageState extends State<PythonProgrammingLanguage> {
  Future<void> __pythonfirst() async {
    if (!await launchUrl(_pythonfirst)) {
      throw Exception('Could not launch $_pythonfirst');
    }
  }

  Future<void> __pythonsecond() async {
    if (!await launchUrl(_pythonsecond)) {
      throw Exception('Could not launch $_pythonsecond');
    }
  }

  Future<void> __pythonthird() async {
    if (!await launchUrl(_pythonthird)) {
      throw Exception('Could not launch $_pythonthird');
    }
  }

  Future<void> __pythonfourth() async {
    if (!await launchUrl(_pythonfourth)) {
      throw Exception('Could not launch $_pythonfourth');
    }
  }

  Future<void> __pythonfifth() async {
    if (!await launchUrl(_pythonfifth)) {
      throw Exception('Could not launch $_pythonfifth');
    }
  }

  Future<void> __pythonsixth() async {
    if (!await launchUrl(_pythonsixth)) {
      throw Exception('Could not launch $_pythonsixth');
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
          "Python Programming Language",
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
              onTap: __pythonfirst,
              img: 'assets/images/programming_languages/python link 1.png',
              title: 'Corey Schafer',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __pythonsecond,
              img: 'assets/images/programming_languages/python link 2.png',
              title: 'CodeWithHarry',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __pythonthird,
              img: 'assets/images/programming_languages/python link 3.png',
              title: 'Shradha Khapra',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __pythonfourth,
              img: 'assets/images/programming_languages/python link 4.png',
              title: 'Codezilla',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __pythonfifth,
              img: 'assets/images/programming_languages/python link 5.png',
              title: 'Elzero Web School',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __pythonsixth,
              img: 'assets/images/programming_languages/python link 6.png',
              title: 'Abdelrahman Gamal',
              subtitle: 'Arabic',
            ),
          ],
        ),
      ),
    );
  }
}
