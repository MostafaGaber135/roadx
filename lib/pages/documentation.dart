import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:roadx/widgets/nav.dart';
import 'package:url_launcher/url_launcher.dart';

// Frontend

final Uri _frontendfirst =
    Uri.parse('https://developer.mozilla.org/en-US/docs/Web/CSS');
final Uri _frontendsecond = Uri.parse('https://devdocs.io/css-display/');
final Uri _frontendthird =
    Uri.parse('https://www.w3schools.com/cssref/index.php');

// Backend

final Uri _backendfirst = Uri.parse('https://www.w3schools.com/php/');
final Uri _backendsecond = Uri.parse('https://dev.mysql.com/doc/');
final Uri _backendthird = Uri.parse('https://nodejs.org/docs/latest/api/');

// Wordpress
final Uri _wordpressfirst = Uri.parse('https://codex.wordpress.org/');
final Uri _wordpresssecond =
    Uri.parse(' https://developer.wordpress.org/themes/basics/');
final Uri _wordpressthird = Uri.parse('https://developer.wordpress.org/');

// Android
final Uri _androidfirst = Uri.parse('https://developer.android.com/guide');
final Uri _androidsecond =
    Uri.parse('https://okaythis.com/developer/documentation/v1/android');
final Uri _androidthird =
    Uri.parse('https://kotlinlang.org/docs/android-overview.html');
// Crossplatform
final Uri _crossplatformfirst = Uri.parse('https://dart.dev/guides');
final Uri _crossplatformsecond = Uri.parse('https://docs.flutter.dev/');
final Uri _crossplatformthird =
    Uri.parse('https://firebase.flutter.dev/docs/overview/');
// Network

final Uri _networkfirst = Uri.parse(
    'https://www.scribd.com/document/389397668/Cisco-CCNA-1-Introduction-to-Networks');
final Uri _networksecond = Uri.parse(
    'https://learningnetwork.cisco.com/s/all-media?ccid=sem&dtid=mediabuy&oid=sem&gad_source=1&gclid=CjwKCAjww_iwBhApEiwAuG6ccAa3iBv7eIkCSwZmk21p3JsvjWNQti1HiI3ttyngVHhZNMt5cNMqGRoCHEwQAvD_BwE&gclsrc=aw.ds');
final Uri _networkthird = Uri.parse(
    'https://www.wireshark.org/docs/wsug_html_chunked/ChapterIntroduction.html');
final Uri _networkfourth = Uri.parse(
    'https://www.wireshark.org/download/docs/Wireshark%20User%27s%20Guide.pdf');
final Uri _networkfifth = Uri.parse(
    'https://info.microsoft.com/rs/157-GQE-382/images/IntroducingWindowsServer2016_ebook.pdf');

// Cyber
final Uri _cybersecurityfirst = Uri.parse(
    'https://www.simplilearn.com/tutorials/cyber-security-tutorial/cyber-security-for-beginners');
final Uri _cybersecuritysecond =
    Uri.parse('https://www.w3schools.com/cybersecurity/');
final Uri _cybersecuritythird =
    Uri.parse('https://us.norton.com/blog/how-to/cybersecurity-basics');
final Uri _cybersecurityfourth =
    Uri.parse('https://www.geeksforgeeks.org/cyber-security-tutorial/');
final Uri _cybersecurityfifth = Uri.parse(
    'https://www.eccouncil.org/cybersecurity-exchange/cyber-novice/free-cybersecurity-courses-beginners/');

// AI
final Uri _aifirst = Uri.parse('https://www.mdpi.com/2073-431X/12/5/91');
final Uri _aisecond = Uri.parse(
    'https://scikit-learn.org/stable/modules/neural_networks_supervised.html');
final Uri _aithird =
    Uri.parse('https://www.javatpoint.com/artificial-neural-network');
final Uri _aifourth = Uri.parse('https://cloud.google.com/document-ai/docs');
final Uri _aififth = Uri.parse(
    'https://docs.h2o.ai/h2o/latest-stable/h2o-docs/data-science/deep-learning.html');
final Uri _aisixth = Uri.parse(
    'https://ecampusontario.pressbooks.pub/informationsystemscdn/chapter/13-5-machine-learning-and-deep-learning/');
// UI UX Design

final Uri _uiuxdesignfirst = Uri.parse(
    'https://www.pencilandpaper.io/articles/ux-design-documentation-guide');
final Uri _uiuxdesignsecond = Uri.parse(
    'https://www.uxpin.com/studio/blog/3-step-guide-lightweight-ux-documentation/');
final Uri _uiuxdesignthird = Uri.parse(
    'https://www.uiprep.com/blog/the-best-way-to-document-ux-ui-design');

class Documentation extends StatefulWidget {
  const Documentation({super.key});
  static String id = 'Documentation';

  @override
  State<Documentation> createState() => _DocumentationState();
}

class _DocumentationState extends State<Documentation> {
// Frontend
  Future<void> __frontendfirst() async {
    if (!await launchUrl(_frontendfirst)) {
      throw Exception('Could not launch $_frontendfirst');
    }
  }

  Future<void> __frontendsecond() async {
    if (!await launchUrl(_frontendsecond)) {
      throw Exception('Could not launch $_frontendsecond');
    }
  }

  Future<void> __frontendthird() async {
    if (!await launchUrl(_frontendthird)) {
      throw Exception('Could not launch $_frontendthird');
    }
  }

// Backend
  Future<void> __backendfirst() async {
    if (!await launchUrl(_backendfirst)) {
      throw Exception('Could not launch $_backendfirst');
    }
  }

  Future<void> __backendsecond() async {
    if (!await launchUrl(_backendsecond)) {
      throw Exception('Could not launch $_backendsecond');
    }
  }

  Future<void> __backendthird() async {
    if (!await launchUrl(_backendthird)) {
      throw Exception('Could not launch $_backendthird');
    }
  }

// Wordpress

  Future<void> __wordpressfirst() async {
    if (!await launchUrl(_wordpressfirst)) {
      throw Exception('Could not launch $_wordpressfirst');
    }
  }

  Future<void> __wordpresssecond() async {
    if (!await launchUrl(_wordpresssecond)) {
      throw Exception('Could not launch $_wordpresssecond');
    }
  }

  Future<void> __wordpressthird() async {
    if (!await launchUrl(_wordpressthird)) {
      throw Exception('Could not launch $_wordpressthird');
    }
  }

// Android

  Future<void> __androidfirst() async {
    if (!await launchUrl(_androidfirst)) {
      throw Exception('Could not launch $_androidfirst');
    }
  }

  Future<void> __androidsecond() async {
    if (!await launchUrl(_androidsecond)) {
      throw Exception('Could not launch $_androidsecond');
    }
  }

  Future<void> __androidthird() async {
    if (!await launchUrl(_androidthird)) {
      throw Exception('Could not launch $_androidthird');
    }
  }

  // Crossplatform
  Future<void> __crossplatformfirst() async {
    if (!await launchUrl(_crossplatformfirst)) {
      throw Exception('Could not launch $_crossplatformfirst');
    }
  }

  Future<void> __crossplatformsecond() async {
    if (!await launchUrl(_crossplatformsecond)) {
      throw Exception('Could not launch $_crossplatformsecond');
    }
  }

  Future<void> __crossplatformthird() async {
    if (!await launchUrl(_crossplatformthird)) {
      throw Exception('Could not launch $_crossplatformthird');
    }
  }

// network
  Future<void> __networkfirst() async {
    if (!await launchUrl(_networkfirst)) {
      throw Exception('Could not launch $_networkfirst');
    }
  }

  Future<void> __networksecond() async {
    if (!await launchUrl(_networksecond)) {
      throw Exception('Could not launch $_networksecond');
    }
  }

  Future<void> __networkthird() async {
    if (!await launchUrl(_networkthird)) {
      throw Exception('Could not launch $_networkthird');
    }
  }

  Future<void> __networkfourth() async {
    if (!await launchUrl(_networkfourth)) {
      throw Exception('Could not launch $_networkfourth');
    }
  }

  Future<void> __networkfifth() async {
    if (!await launchUrl(_networkfifth)) {
      throw Exception('Could not launch $_networkfifth');
    }
  }

// cyber
  Future<void> __cybersecurityfirst() async {
    if (!await launchUrl(_cybersecurityfirst)) {
      throw Exception('Could not launch $_cybersecurityfirst');
    }
  }

  Future<void> __cybersecuritysecond() async {
    if (!await launchUrl(_cybersecuritysecond)) {
      throw Exception('Could not launch $_cybersecuritysecond');
    }
  }

  Future<void> __cybersecuritythird() async {
    if (!await launchUrl(_cybersecuritythird)) {
      throw Exception('Could not launch $_cybersecuritythird');
    }
  }

  Future<void> __cybersecurityfourth() async {
    if (!await launchUrl(_cybersecurityfourth)) {
      throw Exception('Could not launch $_cybersecurityfourth');
    }
  }

  Future<void> __cybersecurityfifth() async {
    if (!await launchUrl(_cybersecurityfifth)) {
      throw Exception('Could not launch $_cybersecurityfifth');
    }
  }

// AI
  Future<void> __aifirst() async {
    if (!await launchUrl(_aifirst)) {
      throw Exception('Could not launch $_aifirst');
    }
  }

  Future<void> __aisecond() async {
    if (!await launchUrl(_aisecond)) {
      throw Exception('Could not launch $_aisecond');
    }
  }

  Future<void> __aithird() async {
    if (!await launchUrl(_aithird)) {
      throw Exception('Could not launch $_aithird');
    }
  }

  Future<void> __aifourth() async {
    if (!await launchUrl(_aifourth)) {
      throw Exception('Could not launch $_aifourth');
    }
  }

  Future<void> __aififth() async {
    if (!await launchUrl(_aififth)) {
      throw Exception('Could not launch $_aififth');
    }
  }

  Future<void> __aisixth() async {
    if (!await launchUrl(_aisixth)) {
      throw Exception('Could not launch $_aisixth');
    }
  }

// UI UX Design
  Future<void> __uiuxdesignfirst() async {
    if (!await launchUrl(_uiuxdesignfirst)) {
      throw Exception('Could not launch $_uiuxdesignfirst');
    }
  }

  Future<void> __uiuxdesignsecond() async {
    if (!await launchUrl(_uiuxdesignsecond)) {
      throw Exception('Could not launch $_uiuxdesignsecond');
    }
  }

  Future<void> __uiuxdesignthird() async {
    if (!await launchUrl(_uiuxdesignthird)) {
      throw Exception('Could not launch $_uiuxdesignthird');
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
                MaterialPageRoute(builder: (context) => const Nav()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Documentation",
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
              onTap: __frontendfirst,
              img:
                  'assets/images/content_of_stacks/front documentation link 1.png',
              title: 'developer.mozilla',
              subtitle: 'Frontend',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __frontendsecond,
              img:
                  'assets/images/content_of_stacks/front documentation link 2.png',
              title: 'devdocs.io',
              subtitle: 'Frontend',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __frontendthird,
              img:
                  'assets/images/content_of_stacks/front documentation link 3.png',
              title: 'www.w3schools',
              subtitle: 'Frontend',
            ),
            // Backend
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __backendfirst,
              img: 'assets/images/content_of_stacks/vector3.png',
              title: 'www.w3schools',
              subtitle: 'Backend',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __backendsecond,
              img: 'assets/images/content_of_stacks/mysql-logo.png',
              title: 'dev.mysql',
              subtitle: 'Backend',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __backendthird,
              img: 'assets/images/content_of_stacks/svgexport-1.png',
              title: 'nodejs',
              subtitle: 'Backend',
            ),

            // Wordpress
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressfirst,
              img:
                  'assets/images/content_of_stacks/wordpress documentation link 1.png',
              title: 'codex.wordpress',
              subtitle: 'Wordpress',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpresssecond,
              img:
                  'assets/images/content_of_stacks/wordpress documentation link 2.png',
              title: 'codex.wordpress',
              subtitle: 'Wordpress',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressthird,
              img:
                  'assets/images/content_of_stacks/wordpress documentation link 3.png',
              title: 'codex.wordpress',
              subtitle: 'Wordpress',
            ),

            // Android
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __androidfirst,
              img:
                  'assets/images/content_of_stacks/android documentation link 1.png',
              title: 'developer.android',
              subtitle: 'Android Application',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __androidsecond,
              img:
                  'assets/images/content_of_stacks/android documentation link 2.png',
              title: 'okaythis',
              subtitle: 'Android Application',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __androidthird,
              img:
                  'assets/images/content_of_stacks/android documentation link 3.png',
              title: 'kotlinlang',
              subtitle: 'Android Application',
            ),
            // Crossplatform
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __crossplatformfirst,
              img: 'assets/images/content_of_stacks/Dart.png',
              title: 'Dart Documentation',
              subtitle: 'CrossPlatform',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __crossplatformsecond,
              img: 'assets/images/content_of_stacks/Flutter.png',
              title: 'Flutter Documentation',
              subtitle: 'CrossPlatform',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __crossplatformthird,
              img: 'assets/images/content_of_stacks/flutterfire.png',
              title: 'FlutterFire Documentation',
              subtitle: 'CrossPlatform',
            ),
            // Network
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkfirst,
              img: 'assets/images/content_of_stacks/download.png',
              title: 'scribd',
              subtitle: 'Network',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networksecond,
              img: 'assets/images/content_of_stacks/cisco-logo-transparent.png',
              title: 'learningnetwork',
              subtitle: 'Network',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkthird,
              img: 'assets/images/content_of_stacks/wireshark-logo.png',
              title: 'wireshark',
              subtitle: 'Network',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkfourth,
              img: 'assets/images/content_of_stacks/network.png',
              title: 'wireshark',
              subtitle: 'Network',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkfifth,
              img: 'assets/images/content_of_stacks/network1.jpg',
              title: 'info.microsoft',
              subtitle: 'Network',
            ),

            // Cyber
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cybersecurityfirst,
              img: 'assets/images/content_of_stacks/logo.png',
              title: 'simplilearn',
              subtitle: 'Cyber Security',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cybersecuritysecond,
              img: 'assets/images/content_of_stacks/vector3.png',
              title: 'w3schools',
              subtitle: 'Cyber Security',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cybersecuritythird,
              img: 'assets/images/content_of_stacks/Norton Logo.png',
              title: 'us.norton',
              subtitle: 'Cyber Security',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cybersecurityfourth,
              img:
                  'assets/images/content_of_stacks/EC-Council_Cybersecurity-Exchange-tab.png',
              title: 'geeksforgeeks',
              subtitle: 'Cyber Security',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cybersecurityfifth,
              img: 'assets/images/content_of_stacks/logo.png',
              title: 'eccouncil',
              subtitle: 'Cyber Security',
            ),
            // AI
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __aifirst,
              img:
                  'assets/images/content_of_stacks/ai documentation link 1.png',
              title: 'mdpi',
              subtitle: 'Artificial Intelligence',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __aisecond,
              img:
                  'assets/images/content_of_stacks/ai documentation link 2.png',
              title: 'scikit-learn',
              subtitle: 'Artificial Intelligence',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __aithird,
              img:
                  'assets/images/content_of_stacks/ai documentation link 3.png',
              title: 'javatpoint',
              subtitle: 'Artificial Intelligence',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __aifourth,
              img:
                  'assets/images/content_of_stacks/ai documentation link 4.png',
              title: 'cloud.google',
              subtitle: 'Artificial Intelligence',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __aififth,
              img:
                  'assets/images/content_of_stacks/ai documentation link 5.png',
              title: 'docs.h2o.ai',
              subtitle: 'Artificial Intelligence',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __aisixth,
              img:
                  'assets/images/content_of_stacks/ai documentation link 6.png',
              title: 'ecampusontario.pressbooks',
              subtitle: 'Artificial Intelligence',
            ),
            // UI UX Design
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __uiuxdesignfirst,
              img: 'assets/images/content_of_stacks/ui ux design link 1.png',
              title: 'pencilandpaper.io',
              subtitle: 'UI UX Design',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __uiuxdesignsecond,
              img: 'assets/images/content_of_stacks/ui ux design link 2.png',
              title: 'uxpin',
              subtitle: 'UI UX Design',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __uiuxdesignthird,
              img: 'assets/images/content_of_stacks/ui ux design link 3.png',
              title: 'uiprep',
              subtitle: 'UI UX Design',
            ),
          ],
        ),
      ),
    );
  }
}
