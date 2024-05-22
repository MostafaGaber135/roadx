import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadx/drawer/about.dart';
import 'package:roadx/drawer/settings.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _facebook = Uri.parse('https://www.facebook.com/profile.php?id=61558914685466');
final Uri _feedback =
    Uri.parse('https://roadx.site/');

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  Future<void> _followus() async {
    if (!await launchUrl(_facebook)) {
      throw Exception('Could not launch $_facebook');
    }
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_feedback)) {
      throw Exception('Could not launch $_feedback');
    }
  }

  Future<void> _sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'roadx2024@gmail.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Write Your Feedback',
      }),
    );
    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      const SnackBar(content: Text('can\'t launch email app, handle error'));
    }
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    const moonIcon = CupertinoIcons.moon_circle_fill;
    return Drawer(
      child: ListView(
        children: [
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text(
              'About',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const About()),
              );
            },
           
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: const Icon(Icons.facebook),
            title: const Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: _followus,
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: const Icon(Icons.open_in_new_outlined),
            title: const Text(
              'Visit Our Website',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: _launchUrl,
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: const Icon(Icons.star_border_outlined),
            title: const Text(
              'Feedback',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: _sendEmail,
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text(
              'Setting',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                        "App Mode",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        moonIcon,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        final themeMode = AdaptiveTheme.of(context).mode;
                        final adaptiveThemeMode =
                            themeMode == AdaptiveThemeMode.light
                                ? AdaptiveThemeMode.dark
                                : AdaptiveThemeMode.light;
                        AdaptiveTheme.of(context)
                            .setThemeMode(adaptiveThemeMode);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
