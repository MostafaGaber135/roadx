import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/cyber_security.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _linuxfirst = Uri.parse(
    'https://www.youtube.com/watch?v=YHFzr-akOas&list=PLS1QulWo1RIb9WVQGJ_vh-RQusbZgO_As');
final Uri _linuxsecond = Uri.parse(
    'https://www.youtube.com/watch?v=lvSoxOMg5_c&list=PLT98CRl2KxKHaKA9-4_I38sLzK134p4GJ');
final Uri _linuxthird = Uri.parse(
    'https://www.youtube.com/watch?v=rgmi5JEywNg&list=PLNSVnXX5qE8VOJ6BgMytvgFpEK2o4sM1o');
final Uri _linuxfourth = Uri.parse(
    'https://www.youtube.com/watch?v=vPevc8XaImk&list=PLAZ__zcDB1IaNaVNOckNpgEpjghSHr8Gg&pp=iAQB');

class StudyingLinux extends StatefulWidget {
  const StudyingLinux({super.key});
  static String id = 'Studying Linux';

  @override
  State<StudyingLinux> createState() => _StudyingLinuxState();
}

class _StudyingLinuxState extends State<StudyingLinux> {
  Future<void> __linuxfirst() async {
    if (!await launchUrl(_linuxfirst)) {
      throw Exception('Could not launch $_linuxfirst');
    }
  }

  Future<void> __linuxsecond() async {
    if (!await launchUrl(_linuxsecond)) {
      throw Exception('Could not launch $_linuxsecond');
    }
  }

  Future<void> __linuxthird() async {
    if (!await launchUrl(_linuxthird)) {
      throw Exception('Could not launch $_linuxthird');
    }
  }

  Future<void> __linuxfourth() async {
    if (!await launchUrl(_linuxfourth)) {
      throw Exception('Could not launch $_linuxfourth');
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
                MaterialPageRoute(builder: (context) => const CyberSecurity()),
              );
            },
           
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Studying Linux",
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
              onTap: __linuxfirst,
              img: 'assets/images/content_of_stacks/linux first link.png',
              title: 'Linux Command Line Tutorial For Beginners',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linuxsecond,
              img: 'assets/images/content_of_stacks/linux second link.png',
              title: 'Linux Commands for Beginners',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linuxthird,
              img: 'assets/images/content_of_stacks/linux third link.png',
              title: 'Complete Linux course for beginners in Arabic',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linuxfourth,
              img: 'assets/images/content_of_stacks/linux fourth link.png',
              title: 'Linuxtopia دوره تعلم نظام اللينكس 2021 ',
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
