import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/knowledge.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _serversfirst = Uri.parse(
    'https://www.youtube.com/watch?v=UjCDWCeHCzY');
final Uri _serverssecond = Uri.parse(
    'https://www.youtube.com/watch?v=VXmvM2QtuMU');
final Uri _serversthird = Uri.parse(
    'https://www.youtube.com/watch?v=BPVcsOKfd34');
    final Uri _serversfourth = Uri.parse(
    'https://www.youtube.com/watch?v=AIBktEk11ko');

class Servers extends StatefulWidget {
  const Servers({super.key});
  static String id = 'Servers';

  @override
  State<Servers> createState() => _ServersState();
}

class _ServersState extends State<Servers> {
  Future<void> __serversfirst() async {
    if (!await launchUrl(_serversfirst)) {
      throw Exception('Could not launch $_serversfirst');
    }
  }

  Future<void> __serverssecond() async {
    if (!await launchUrl(_serverssecond)) {
      throw Exception('Could not launch $_serverssecond');
    }
  }

  Future<void> __serversthird() async {
    if (!await launchUrl(_serversthird)) {
      throw Exception('Could not launch $_serversthird');
    }
  }
  Future<void> __serversfourth() async {
    if (!await launchUrl(_serversfourth)) {
      throw Exception('Could not launch $_serversfourth');
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
          "Servers",
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
              onTap: __serversfirst,
              img: 'assets/images/knowledge/servers link 1.png',
              title: 'PowerCert Animated Videos',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __serverssecond,
              img: 'assets/images/knowledge/servers link 2.png',
              title: 'LiveOverflow',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __serversfourth,
              img: 'assets/images/knowledge/servers link 3.png',
              title: 'IT-Made-Easy',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __serversthird,
              img: 'assets/images/knowledge/servers link 4.png',
              title: 'Matrix219',
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

