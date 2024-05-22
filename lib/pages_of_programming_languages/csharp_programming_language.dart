import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/programming_language.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _csharpfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLZPZq0r_RZOPNy28FDBys3GVP2LiaIyP_');
final Uri _csharpsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLTjRvDozrdlz3_FPXwb6lX_HoGXa09Yef');
final Uri _csharpthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PL_c9BZzLwBRIXCJGLd4UzqH34uCclOFwC');
final Uri _csharpfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLHIfW1KZRIfm8nQAoJF5u2aV43tMRAAmr');
final Uri _csharpfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLhiFu-f80eo-tcwk0nYsehyPErEhw9scm');
final Uri _csharpsixth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLsV97AQt78NT0H8J71qe7edwRpAirfqOI');

class CSharpProgrammingLanguage extends StatefulWidget {
  const CSharpProgrammingLanguage({super.key});
  static String id = 'CSharp Programming Language';

  @override
  State<CSharpProgrammingLanguage> createState() =>
      _CSharpProgrammingLanguageState();
}

class _CSharpProgrammingLanguageState extends State<CSharpProgrammingLanguage> {
  Future<void> __csharpfirst() async {
    if (!await launchUrl(_csharpfirst)) {
      throw Exception('Could not launch $_csharpfirst');
    }
  }

  Future<void> __csharpsecond() async {
    if (!await launchUrl(_csharpsecond)) {
      throw Exception('Could not launch $_csharpsecond');
    }
  }

  Future<void> __csharpthird() async {
    if (!await launchUrl(_csharpthird)) {
      throw Exception('Could not launch $_csharpthird');
    }
  }

  Future<void> __csharpfourth() async {
    if (!await launchUrl(_csharpfourth)) {
      throw Exception('Could not launch $_csharpfourth');
    }
  }

  Future<void> __csharpfifth() async {
    if (!await launchUrl(_csharpfifth)) {
      throw Exception('Could not launch $_csharpfifth');
    }
  }

  Future<void> __csharpsixth() async {
    if (!await launchUrl(_csharpsixth)) {
      throw Exception('Could not launch $_csharpsixth');
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
          "C# Programming Language",
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
              onTap: __csharpfirst,
              img: 'assets/images/programming_languages/csharp link 1.png',
              title: 'Programming with Mosh',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __csharpsecond,
              img: 'assets/images/programming_languages/csharp link 2.png',
              title: 'Bro Code',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __csharpthird,
              img: 'assets/images/programming_languages/csharp link 3.png',
              title: 'Caleb Curry',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __csharpfourth,
              img: 'assets/images/programming_languages/csharp link 4.png',
              title: 'Hassouna Academy',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __csharpfifth,
              img: 'assets/images/programming_languages/csharp link 5.png',
              title: 'Tecno U',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __csharpsixth,
              img: 'assets/images/programming_languages/csharp link 6.png',
              title: 'Passionate Coders | محمد المهدي',
              subtitle: 'Arabic',
            ),
          ],
        ),
      ),
    );
  }
}
