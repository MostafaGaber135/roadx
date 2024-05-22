import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/content_of_stacks/Back_End/flask_backend_developer.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri _djangofirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLVBKjEIdL9bvCdI4l1Emvbezv10GjUaLk');
final Uri _djangosecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLknwEmKsW8OtK_n48UOuYGxJPbSFrICxm');
class Django extends StatefulWidget {
  const Django({super.key});
static String id = 'Django';

  @override
  State<Django> createState() => _DjangoState();
}

class _DjangoState extends State<Django> {
  Future<void> __djangofirst() async {
    if (!await launchUrl(_djangofirst)) {
      throw Exception('Could not launch $_djangofirst');
    }
  }

  Future<void> __djangosecond() async {
    if (!await launchUrl(_djangosecond)) {
      throw Exception('Could not launch $_djangosecond');
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
                MaterialPageRoute(builder: (context) => const FlaskBackendDeveloper()),
              );
            },
           
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Django",
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
              onTap: __djangofirst,
              img: 'assets/images/content_of_stacks/django link 1.png',
              title: 'Coding for All | Newton School',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __djangosecond,
              img: 'assets/images/content_of_stacks/django link 2.png',
              title: 'Abdelrahman Gamal',
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

