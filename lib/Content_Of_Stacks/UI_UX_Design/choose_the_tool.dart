import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/ui_ux_design.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _adobetooluiuxfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLW-zSkCnZ-gD5TDfs1eL5EnH2mQ0f9g6B');
final Uri _adobetooluiuxsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLjwm_8O3suyPkIphVrJaebR2qE8jylWBQ');
final Uri _adobetooluiuxthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLRemWV5koZLBR1khj5OlC_xLkdsI8G5DF');
final Uri _adobetooluiuxfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLhiFu-f80eo921vkdEKuYFZg4XQHuD4mB');
final Uri _adobetooluiuxfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PL3TD0Gp7DEWu_c9M6gHqPq7Vi1mMopkPR');

final Uri _figmatooluiuxfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLW-zSkCnZ-gD5TDfs1eL5EnH2mQ0f9g6B');
final Uri _figmatooluiuxsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLjwm_8O3suyPkIphVrJaebR2qE8jylWBQ');
final Uri _figmatooluiuxthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLRemWV5koZLBR1khj5OlC_xLkdsI8G5DF');
final Uri _figmatooluiuxfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLhiFu-f80eo921vkdEKuYFZg4XQHuD4mB');
final Uri _figmatooluiuxfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PL3TD0Gp7DEWu_c9M6gHqPq7Vi1mMopkPR');

class ChooseTheTool extends StatefulWidget {
  const ChooseTheTool({super.key});
  static String id = 'Choose the tool you start with Adobe XD / Figma Tool';

  @override
  State<ChooseTheTool> createState() => _ChooseTheToolState();
}

class _ChooseTheToolState extends State<ChooseTheTool> {
  Future<void> __adobetooluiuxfirst() async {
    if (!await launchUrl(_adobetooluiuxfirst)) {
      throw Exception('Could not launch $_adobetooluiuxfirst');
    }
  }

  Future<void> __adobetooluiuxsecond() async {
    if (!await launchUrl(_adobetooluiuxsecond)) {
      throw Exception('Could not launch $_adobetooluiuxsecond');
    }
  }

  Future<void> __adobetooluiuxthird() async {
    if (!await launchUrl(_adobetooluiuxthird)) {
      throw Exception('Could not launch $_adobetooluiuxthird');
    }
  }

  Future<void> __adobetooluiuxfourth() async {
    if (!await launchUrl(_adobetooluiuxfourth)) {
      throw Exception('Could not launch $_adobetooluiuxfourth');
    }
  }

  Future<void> __adobetooluiuxfifth() async {
    if (!await launchUrl(_adobetooluiuxfifth)) {
      throw Exception('Could not launch $_adobetooluiuxfifth');
    }
  }

  Future<void> __figmatooluiuxfirst() async {
    if (!await launchUrl(_figmatooluiuxfirst)) {
      throw Exception('Could not launch $_figmatooluiuxfirst');
    }
  }

  Future<void> __figmatooluiuxsecond() async {
    if (!await launchUrl(_figmatooluiuxsecond)) {
      throw Exception('Could not launch $_figmatooluiuxsecond');
    }
  }

  Future<void> __figmatooluiuxthird() async {
    if (!await launchUrl(_figmatooluiuxthird)) {
      throw Exception('Could not launch $_figmatooluiuxthird');
    }
  }

  Future<void> __figmatooluiuxfourth() async {
    if (!await launchUrl(_figmatooluiuxfourth)) {
      throw Exception('Could not launch $_figmatooluiuxfourth');
    }
  }

  Future<void> __figmatooluiuxfifth() async {
    if (!await launchUrl(_figmatooluiuxfifth)) {
      throw Exception('Could not launch $_figmatooluiuxfifth');
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
                MaterialPageRoute(builder: (context) => const UIUXDesign()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Choose the tool you start with Adobe XD / Figma Tool",
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
              onTap: __adobetooluiuxfirst,
              img: 'assets/images/content_of_stacks/tool_playlist1.jpg',
              title: 'GFXMentor',
              subtitle: 'For Adobe XD - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __adobetooluiuxsecond,
              img: 'assets/images/content_of_stacks/tool_playlist2.jpg',
              title: 'GreatStack',
              subtitle: 'For Adobe XD - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __adobetooluiuxthird,
              img: 'assets/images/content_of_stacks/tool_playlist3.jpg',
              title: 'Alaa Darwish',
              subtitle: 'For Adobe XD - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __adobetooluiuxfourth,
              img: 'assets/images/content_of_stacks/tool_playlist4.jpg',
              title: 'Tecno U',
              subtitle: 'For Adobe XD - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __adobetooluiuxfifth,
              img: 'assets/images/content_of_stacks/tool_playlist5.jpg',
              title: 'Ayman Taher',
              subtitle: 'For Adobe XD - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __figmatooluiuxfirst,
              img: 'assets/images/content_of_stacks/figma_playlist 1.jpg',
              title: 'Bring Your Own Laptop',
              subtitle: 'For Figma  - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __figmatooluiuxsecond,
              img: 'assets/images/content_of_stacks/figma_playlist 2.jpg',
              title: 'DesignWithArash',
              subtitle: 'For figma  - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __figmatooluiuxthird,
              img: 'assets/images/content_of_stacks/figma_playlist 3.jpg',
              title: 'برمج Barmej',
              subtitle: 'For Figma  - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __figmatooluiuxfourth,
              img: 'assets/images/content_of_stacks/figma_playlist 4.jpg',
              title: 'Ehab Fayez',
              subtitle: 'For Figma  - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __figmatooluiuxfifth,
              img: 'assets/images/content_of_stacks/figma_playlist 5.jpg',
              title: 'أصيل | uxAseel',
              subtitle: 'For Figma  - Arabic',
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
