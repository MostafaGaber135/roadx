import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/mern_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _mongodbfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PL1BztTYDF-QM6KSVfrbSyJNTU9inyBqYF');
final Uri _mongodbsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLfDx4cQoUNObp1ujQRNooNiadKdlflevM');
final Uri _mongodbthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLd6o9p13Lc5387FWk_GXU0Rh5AhrBGod5');

class MongoDB extends StatefulWidget {
  const MongoDB({super.key});
  static String id = 'MongoDB';

  @override
  State<MongoDB> createState() => _MongoDBState();
}

class _MongoDBState extends State<MongoDB> {
  Future<void> __mongodbfirst() async {
    if (!await launchUrl(_mongodbfirst)) {
      throw Exception('Could not launch $_mongodbfirst');
    }
  }

  Future<void> __mongodbsecond() async {
    if (!await launchUrl(_mongodbsecond)) {
      throw Exception('Could not launch $_mongodbsecond');
    }
  }

  Future<void> __mongodbthird() async {
    if (!await launchUrl(_mongodbthird)) {
      throw Exception('Could not launch $_mongodbthird');
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
                MaterialPageRoute(builder: (context) => const MernBackendDeveloper()),
              );
            },
          
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "MongoDB",
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
              onTap: __mongodbfirst,
              img: 'assets/images/content_of_stacks/mongodb link 1.png',
              title: 'procademy',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __mongodbsecond,
              img: 'assets/images/content_of_stacks/mongodb link 2.png',
              title: 'Algorithm Academy',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __mongodbthird,
              img: 'assets/images/content_of_stacks/mongodb link 3.png',
              title: 'Mohamed Ramadan Abdallah محمد رمضان',
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
