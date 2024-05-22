import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/dotnet_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _csharpfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PL_pbwdIyffslHaBdS3RUW26RKzSjkl8m4');
final Uri _csharpsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLesfn4TAj57XLhtaF9ZS_z0dOKQPXKMcE');
final Uri _csharpthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLhiFu-f80eo-tcwk0nYsehyPErEhw9scm');
class Csharp extends StatefulWidget {
  const Csharp({super.key});
  static String id = 'C#';

  @override
  State<Csharp> createState() => _CsharpState();
}

class _CsharpState extends State<Csharp> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DotNetBackendDeveloper()),
              );
            },
           
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "C#",
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
              img: 'assets/images/content_of_stacks/csharp link 1.png',
              title: 'SECourses',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __csharpsecond,
              img: 'assets/images/content_of_stacks/csharp link 2.png',
              title: 'Developer',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __csharpthird,
              img: 'assets/images/content_of_stacks/csharp link 3.png',
              title: 'Tecno U',
              subtitle: 'Arabic',
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
