import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/extra_knowledge.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _visualstudiocode =
    Uri.parse('https://code.visualstudio.com/');
final Uri _atom = Uri.parse('https://atom-editor.cc/');
final Uri _androidstudio =
    Uri.parse('https://developer.android.com/studio');
    final Uri _wireshark =
    Uri.parse('https://www.wireshark.org/download.html');
final Uri _packettracer = Uri.parse('https://www.netacad.com/courses/packet-tracer');
final Uri _jupyter =
    Uri.parse('https://jupyter.org/install');
    final Uri _adobexd =
    Uri.parse('https://helpx.adobe.com/support/xd.html');
final Uri _figma = Uri.parse('https://www.figma.com/');

class Tools extends StatefulWidget {
  const Tools({super.key});
  static String id = 'Tools';

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  Future<void> __visualstudiocode() async {
    if (!await launchUrl(_visualstudiocode)) {
      throw Exception('Could not launch $_visualstudiocode');
    }
  }

  Future<void> __atom() async {
    if (!await launchUrl(_atom)) {
      throw Exception('Could not launch $_atom');
    }
  }

  Future<void> __androidstudio() async {
    if (!await launchUrl(_androidstudio)) {
      throw Exception('Could not launch $_androidstudio');
    }
  }

Future<void> __wireshark() async {
    if (!await launchUrl(_wireshark)) {
      throw Exception('Could not launch $_wireshark');
    }
  }

  Future<void> __packettracer() async {
    if (!await launchUrl(_packettracer)) {
      throw Exception('Could not launch $_packettracer');
    }
  }

  Future<void> __jupyter() async {
    if (!await launchUrl(_jupyter)) {
      throw Exception('Could not launch $_jupyter');
    }
  }

Future<void> __adobexd() async {
    if (!await launchUrl(_adobexd)) {
      throw Exception('Could not launch $_adobexd');
    }
  }

  Future<void> __figma() async {
    if (!await launchUrl(_figma)) {
      throw Exception('Could not launch $_figma');
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
                MaterialPageRoute(builder: (context) =>  ExtraKnowledge()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Tools",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
       body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            // Front
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __visualstudiocode,
              img:
                  'assets/images/tools/apple-touch-icon.png',
              title: 'Visual Studio Code',
              subtitle: 'For Frontend - Backend - Wordpress - Android - Crossplatform - Cyber Security - Artificial Intelligence',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __atom,
              img:
                  'assets/images/tools/atom.png',
              title: 'Atom',
              subtitle: 'For Frontend - Backend - Wordpress - Cyber Security',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __androidstudio,
              img:
                  'assets/images/tools/android studio.png',
              title: 'Android Studio',
              subtitle: 'For Android - Crossplatform',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wireshark,
              img: 'assets/images/tools/wireshark-logo.png',
              title: 'Wireshark',
              subtitle: 'For Network',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __packettracer,
              img: 'assets/images/tools/cisco_netacad_logo.png',
              title: 'Packet Tracer',
              subtitle: 'For Network',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __jupyter,
              img: 'assets/images/tools/jupyter.png',
              title: 'Jupyter Notebooks',
              subtitle: 'For Artificial Intelligence',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __adobexd,
              img:
                  'assets/images/tools/Adobe XD.png',
              title: 'Adobe XD',
              subtitle: 'For UI UX Design',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __figma,
              img:
                  'assets/images/tools/figma.png',
              title: 'Figma',
              subtitle: 'For UI UX Design',
            ),
          ],
        ),
      ),
    );
  }
}

