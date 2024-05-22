import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/drawer/faq.dart';
import 'package:roadx/drawer/privacypolicy.dart';
import 'package:roadx/drawer/termsofuse.dart';
import 'package:roadx/widgets/nav.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});
  static String id = 'Settings';
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
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
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: const Text('FAQ'),
                onTap: () {
                  Navigator.pushNamed(context, FAQ.id);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: const Text('Privacy Policy'),
                onTap: () {
                  Navigator.pushNamed(context, PrivacyPolicy.id);
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: const Text('Terms Of Use'),
                onTap: () {
                  Navigator.pushNamed(context, TermsOfUse.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
