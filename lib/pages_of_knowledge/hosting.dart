import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/knowledge.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _hostingfirst = Uri.parse(
    'https://www.youtube.com/watch?v=htbY9-yggB0');
final Uri _hostingsecond = Uri.parse(
    'https://www.youtube.com/watch?v=H8oAvyqQwew');
final Uri _hostingthird = Uri.parse(
    'https://www.youtube.com/watch?v=HAsQ4-ndWic');
    final Uri _hostingfourh = Uri.parse(
    'https://www.youtube.com/watch?v=wcHTuyXlH-k');

class Hosting extends StatefulWidget {
  const Hosting({super.key});
  static String id = 'Hosting';

  @override
  State<Hosting> createState() => _HostingState();
}

class _HostingState extends State<Hosting> {
  Future<void> __hostingfirst() async {
    if (!await launchUrl(_hostingfirst)) {
      throw Exception('Could not launch $_hostingfirst');
    }
  }

  Future<void> __hostingsecond() async {
    if (!await launchUrl(_hostingsecond)) {
      throw Exception('Could not launch $_hostingsecond');
    }
  }

  Future<void> __hostingthird() async {
    if (!await launchUrl(_hostingthird)) {
      throw Exception('Could not launch $_hostingthird');
    }
  }
  Future<void> __hostingfourth() async {
    if (!await launchUrl(_hostingfourh)) {
      throw Exception('Could not launch $_hostingfourh');
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
          "Hosting",
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
              onTap: __hostingfirst,
              img: 'assets/images/knowledge/hosting link 1.png',
              title: 'Pickaweb.co.uk',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __hostingsecond,
              img: 'assets/images/knowledge/hosting link 2.png',
              title: 'Create a Pro Website',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __hostingthird,
              img: 'assets/images/knowledge/hosting link 3.png',
              title: 'Site Starters',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __hostingfourth,
              img: 'assets/images/knowledge/hosting link 4.png',
              title: 'Elzero Web School',
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

