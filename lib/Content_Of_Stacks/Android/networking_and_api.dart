import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/android.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _andNetworkingfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLrnPJCHvNZuCbuD3xpfKzQWOj3AXybSaM');
final Uri _andNetworkingsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLlxmoA0rQ-LzEmWs4T99j2w6VnaQVGEtR');
final Uri _andNetworkingthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLk7v1Z2rk4hhGfJw-IQCm6kjywmuJX4Rh');
final Uri _andNetworkingfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLwWuxCLlF_ud0orMMKU893fm1OvF4xSRk');

class NetworkingAndAPIs extends StatefulWidget {
  const NetworkingAndAPIs({super.key});
  static String id = 'Networking and APIs';

  @override
  State<NetworkingAndAPIs> createState() => _NetworkingAndAPIsState();
}

class _NetworkingAndAPIsState extends State<NetworkingAndAPIs> {
  Future<void> __andNetworkingfirst() async {
    if (!await launchUrl(_andNetworkingfirst)) {
      throw Exception('Could not launch $_andNetworkingfirst');
    }
  }

  Future<void> __andNetworkingsecond() async {
    if (!await launchUrl(_andNetworkingsecond)) {
      throw Exception('Could not launch $_andNetworkingsecond');
    }
  }

  Future<void> __andNetworkingthird() async {
    if (!await launchUrl(_andNetworkingthird)) {
      throw Exception('Could not launch $_andNetworkingthird');
    }
  }

  Future<void> __andNetworkingfouth() async {
    if (!await launchUrl(_andNetworkingfourth)) {
      throw Exception('Could not launch $_andNetworkingfourth');
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
                MaterialPageRoute(builder: (context) => const AndroidApplication()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Networking and APIs",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andNetworkingfirst,
              title: 'Coding in Flow',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Networking_playlist 1.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andNetworkingsecond,
              title: 'Smartherd',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Networking_playlist 2.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andNetworkingthird,
              title: 'Simplified Coding',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Networking_playlist 3.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andNetworkingfouth,
              title: 'Omar Ahmed',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Networking_playlist 4.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
