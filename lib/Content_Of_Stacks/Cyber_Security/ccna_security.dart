import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/cyber_security.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _ccnasecurityfirst = Uri.parse(
    'https://www.youtube.com/watch?v=0ZPhQ7zjyuw&list=PLLlr6jKKdyK3xfwHtLwxcTEUC4xVrIB-M');
final Uri _ccnasecuritysecond = Uri.parse(
    'https://www.youtube.com/watch?v=8SPaWhv-9H8&list=PLLlr6jKKdyK2GhxtDaFympthZ2OvsvuZZ');

class CCNASecurity extends StatefulWidget {
  const CCNASecurity({super.key});
  static String id = 'CCNA Security';

  @override
  State<CCNASecurity> createState() => _CCNASecurityState();
}

class _CCNASecurityState extends State<CCNASecurity> {
  Future<void> __ccnasecurityfirst() async {
    if (!await launchUrl(_ccnasecurityfirst)) {
      throw Exception('Could not launch $_ccnasecurityfirst');
    }
  }

  Future<void> __ccnasecuritysecond() async {
    if (!await launchUrl(_ccnasecuritysecond)) {
      throw Exception('Could not launch $_ccnasecuritysecond');
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
          "CCNA Security",
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
              onTap: __ccnasecurityfirst,
              img:
                  'assets/images/content_of_stacks/ccnasecurity first link.png',
              title: 'CCNA Security 640-554 شرح بالعربي للمهندس أحمد سلطان',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __ccnasecuritysecond,
              img:
                  'assets/images/content_of_stacks/ccnasecurity second link.png',
              title: 'CCNA Security 210-260 شرح بالعربي للمهندسة عبير حسني',
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
