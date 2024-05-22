import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/categories.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _flutter = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJIsYc9L0XBSaiiuq01JTMQ_o');

class CustomResourcePage extends StatefulWidget {
  const CustomResourcePage({super.key});
  static String id = 'Custom Resource Page';

  @override
  State<CustomResourcePage> createState() => _CustomResourcePageState();
}

class _CustomResourcePageState extends State<CustomResourcePage> {
  Future<void> _followus() async {
    if (!await launchUrl(_flutter)) {
      throw Exception('Could not launch $_flutter');
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
                MaterialPageRoute(builder: (context) => const Categories()),
              );
            },
          
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Custom Resource Page",
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
            ListTile(
              onTap: _followus,
              leading: Image.asset(
                'assets/images/Playlist 1.png',
              ),
              title: const Text(
                'Wael abo hamza',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              tileColor: Colors.blue[100],
              contentPadding: const EdgeInsets.all(10),
              subtitle: const Text('Arabic'),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.abc),
              title: const Text('CSS'),
              tileColor: Colors.blue[100],
              contentPadding: const EdgeInsets.all(10),
            )
          ],
        ),
      ),
    );
  }
}
