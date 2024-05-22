import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/knowledge.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _tcpipfirst =
    Uri.parse('https://www.youtube.com/watch?v=vKFLgmSC6do');
final Uri _tcpipsecond =
    Uri.parse('https://www.youtube.com/watch?v=PpsEaqJV_A0');
final Uri _tcpipthird =
    Uri.parse('https://www.youtube.com/watch?v=pb2hhd1fhAs');
final Uri _tcpipfourth =
    Uri.parse('https://www.youtube.com/watch?v=Z1WFJc5ip3c');

class TCPIP extends StatefulWidget {
  const TCPIP({super.key});
  static String id = 'TCPIP';

  @override
  State<TCPIP> createState() => _TCPIPState();
}

class _TCPIPState extends State<TCPIP> {
  Future<void> __tcpipfirst() async {
    if (!await launchUrl(_tcpipfirst)) {
      throw Exception('Could not launch $_tcpipfirst');
    }
  }

  Future<void> __tcpipsecond() async {
    if (!await launchUrl(_tcpipsecond)) {
      throw Exception('Could not launch $_tcpipsecond');
    }
  }

  Future<void> __tcpipthird() async {
    if (!await launchUrl(_tcpipthird)) {
      throw Exception('Could not launch $_tcpipthird');
    }
  }

  Future<void> __tcpipfourth() async {
    if (!await launchUrl(_tcpipfourth)) {
      throw Exception('Could not launch $_tcpipfourth');
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
          "TCP/IP",
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
              onTap: __tcpipfirst,
              img: 'assets/images/knowledge/tcp ip link 1.png',
              title: 'TALtech Media',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __tcpipsecond,
              img: 'assets/images/knowledge/tcp ip link 2.png',
              title: 'Techquickie',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __tcpipthird,
              img: 'assets/images/knowledge/tcp ip link 1.png',
              title: 'Sameh Ramadan',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __tcpipfourth,
              img: 'assets/images/knowledge/tcp ip link 4.png',
              title: 'Arab Technology',
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
