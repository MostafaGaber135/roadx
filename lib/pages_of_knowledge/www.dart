import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/knowledge.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _wwwfirst = Uri.parse('https://www.youtube.com/watch?v=J8hzJxb0rpc');
final Uri _wwwsecond = Uri.parse('https://www.youtube.com/watch?v=lYUMqsqNAdM');
final Uri _wwwthird = Uri.parse('https://www.youtube.com/watch?v=yoJPysX1xzU');
final Uri _wwwfourth = Uri.parse('https://www.youtube.com/watch?v=MNzZrTGIwAE');

class WWW extends StatefulWidget {
  const WWW({super.key});
  static String id = 'WWW';

  @override
  State<WWW> createState() => _WWWState();
}

class _WWWState extends State<WWW> {
  Future<void> __wwwfirst() async {
    if (!await launchUrl(_wwwfirst)) {
      throw Exception('Could not launch $_wwwfirst');
    }
  }

  Future<void> __wwwsecond() async {
    if (!await launchUrl(_wwwsecond)) {
      throw Exception('Could not launch $_wwwsecond');
    }
  }

  Future<void> __wwwthird() async {
    if (!await launchUrl(_wwwthird)) {
      throw Exception('Could not launch $_wwwthird');
    }
  }

  Future<void> __wwwfourth() async {
    if (!await launchUrl(_wwwfourth)) {
      throw Exception('Could not launch $_wwwfourth');
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
                MaterialPageRoute(builder: (context) => const Knowledge()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "WWW",
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
              onTap: __wwwfirst,
              img: 'assets/images/knowledge/www link 1.png',
              title: 'TED-Ed',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wwwsecond,
              img: 'assets/images/knowledge/www link 2.png',
              title: 'Simply Coding',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wwwthird,
              img: 'assets/images/knowledge/www link 3.png',
              title: 'Education 4u',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wwwfourth,
              img: 'assets/images/knowledge/www link 4.png',
              title: 'فيديوهات عسكرية',
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
