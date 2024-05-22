import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/knowledge.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _domainfirst =
    Uri.parse('https://www.youtube.com/watch?v=TqdEvlvbmt4');
final Uri _domainsecond =
    Uri.parse('https://www.youtube.com/watch?v=Y4cRx19nhJk');
final Uri _domainthird =
    Uri.parse('https://www.youtube.com/watch?v=p1bqHINh7X4');
final Uri _domainfourth =
    Uri.parse('https://www.youtube.com/watch?v=s-9143t3cHA');

class Domain extends StatefulWidget {
  const Domain({super.key});
  static String id = 'Domain';

  @override
  State<Domain> createState() => _DomainState();
}

class _DomainState extends State<Domain> {
  Future<void> __domainfirst() async {
    if (!await launchUrl(_domainfirst)) {
      throw Exception('Could not launch $_domainfirst');
    }
  }

  Future<void> __domainsecond() async {
    if (!await launchUrl(_domainsecond)) {
      throw Exception('Could not launch $_domainsecond');
    }
  }

  Future<void> __domainthird() async {
    if (!await launchUrl(_domainthird)) {
      throw Exception('Could not launch $_domainthird');
    }
  }

  Future<void> __domainfourth() async {
    if (!await launchUrl(_domainfourth)) {
      throw Exception('Could not launch $_domainfourth');
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
          "Domain",
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
              onTap: __domainfirst,
              img: 'assets/images/knowledge/domain link 1.png',
              title: 'Squarespace',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __domainsecond,
              img: 'assets/images/knowledge/domain link 2.png',
              title: 'Create a Pro Website',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __domainthird,
              img: 'assets/images/knowledge/domain link 3.png',
              title: 'ووردبريس بالعربية',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __domainfourth,
              img: 'assets/images/knowledge/domain link 4.png',
              title: 'IT Dose',
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
