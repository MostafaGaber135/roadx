import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/network.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _windowsserverfirst = Uri.parse(
    'https://www.youtube.com/watch?v=lrtYDS5WKR0&list=PLYogJ_kxL1wTesq-vNxEc8tjDOHvszeWf');
final Uri _windowsserversecond = Uri.parse(
    'https://www.youtube.com/watch?v=5w7YXcM1oL0&list=PL77yNtB4-Ljkv_urGap0RoLeRHQVVCWMt');
final Uri _windowsserverthird = Uri.parse(
    'https://www.youtube.com/watch?v=hYRNvdcmPfU&list=PLDxVq3TlR9y2sMXaL_yLp-r6pUpevgC-w');

class WindowsServer extends StatefulWidget {
  const WindowsServer({super.key});
  static String id = 'Windows Server';

  @override
  State<WindowsServer> createState() => _WindowsServerState();
}

class _WindowsServerState extends State<WindowsServer> {
  Future<void> __windowsserverfirst() async {
    if (!await launchUrl(_windowsserverfirst)) {
      throw Exception('Could not launch $_windowsserverfirst');
    }
  }

  Future<void> __windowsserversecond() async {
    if (!await launchUrl(_windowsserversecond)) {
      throw Exception('Could not launch $_windowsserversecond');
    }
  }

  Future<void> __windowsserverthird() async {
    if (!await launchUrl(_windowsserverthird)) {
      throw Exception('Could not launch $_windowsserverthird');
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
                MaterialPageRoute(builder: (context) => const Network()),
              );
            },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "Windows Server",
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
              onTap: __windowsserverfirst,
              img:
                  'assets/images/content_of_stacks/link 1 for mcsa english.jpg',
              title: 'IT Flee',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __windowsserversecond,
              img: 'assets/images/content_of_stacks/link 1 for mcsa arabic.jpg',
              title: 'Ahmed Nazmy',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __windowsserverthird,
              img: 'assets/images/content_of_stacks/link 2 of mcsa arabic.jpg',
              title: 'Mohamed Zohdy - محمد زهدي',
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
