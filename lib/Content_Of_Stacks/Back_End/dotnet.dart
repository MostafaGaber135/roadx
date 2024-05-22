import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/dotnet_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _dotnetfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLDSXZnDE8NYWFIZWIZ1H_qZLoSfDiNRxE');
final Uri _dotnetsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLTjRvDozrdlz3_FPXwb6lX_HoGXa09Yef');
final Uri _dotnetthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLP031NiNbUSTBSHuYoyCG69Zn1IIm6qmY');
class DotNet extends StatefulWidget {
  const DotNet({super.key});
static String id = '.Net';

  @override
  State<DotNet> createState() => _DotNetState();
}

class _DotNetState extends State<DotNet> {
  Future<void> __dotnetfirst() async {
    if (!await launchUrl(_dotnetfirst)) {
      throw Exception('Could not launch $_dotnetfirst');
    }
  }

  Future<void> __dotnetsecond() async {
    if (!await launchUrl(_dotnetsecond)) {
      throw Exception('Could not launch $_dotnetsecond');
    }
  }

  Future<void> __dotnetthird() async {
    if (!await launchUrl(_dotnetthird)) {
      throw Exception('Could not launch $_dotnetthird');
    }
  }
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
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
          ".Net",
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
              onTap: __dotnetfirst,
              img: 'assets/images/content_of_stacks/dotnet link 1.png',
              title: 'Shiva Concept Solution',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __dotnetsecond,
              img: 'assets/images/content_of_stacks/dotnet link 2.png',
              title: 'Programming with Mosh',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __dotnetthird,
              img: 'assets/images/content_of_stacks/dotnet link 3.png',
              title: 'Yahoo Baba',
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
  

