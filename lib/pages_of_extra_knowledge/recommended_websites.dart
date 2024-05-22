import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/extra_knowledge.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _linkfirst = Uri.parse('https://www.fotor.com/');
final Uri _linksecond = Uri.parse('https://cleanup.pictures/');
final Uri _linkthird = Uri.parse('https://picwish.com/');
final Uri _linkfourth = Uri.parse('https://coolors.co/');
final Uri _linkfifth = Uri.parse('https://www.pexels.com/');
final Uri _linksixth = Uri.parse('https://fonts.google.com/');
final Uri _linkseventh = Uri.parse('https://ionicons.ez-connect.net/#/');
final Uri _linkeighth = Uri.parse('https://www.freepik.com/');
final Uri _linkninth = Uri.parse('https://www.flaticon.com/');

class RecommendedWebsites extends StatefulWidget {
  const RecommendedWebsites({super.key});
  static String id = 'Recommended Websites';

  @override
  State<RecommendedWebsites> createState() => _RecommendedWebsitesState();
}

class _RecommendedWebsitesState extends State<RecommendedWebsites> {
  Future<void> __linkfirst() async {
    if (!await launchUrl(_linkfirst)) {
      throw Exception('Could not launch $_linkfirst');
    }
  }

  Future<void> __linksecond() async {
    if (!await launchUrl(_linksecond)) {
      throw Exception('Could not launch $_linksecond');
    }
  }

  Future<void> __linkthird() async {
    if (!await launchUrl(_linkthird)) {
      throw Exception('Could not launch $_linkthird');
    }
  }

  Future<void> __linkfourth() async {
    if (!await launchUrl(_linkfourth)) {
      throw Exception('Could not launch $_linkfourth');
    }
  }

  Future<void> __linkfifth() async {
    if (!await launchUrl(_linkfifth)) {
      throw Exception('Could not launch $_linkfifth');
    }
  }

  Future<void> __linksixth() async {
    if (!await launchUrl(_linksixth)) {
      throw Exception('Could not launch $_linksixth');
    }
  }

  Future<void> __linkseventh() async {
    if (!await launchUrl(_linkseventh)) {
      throw Exception('Could not launch $_linkseventh');
    }
  }

  Future<void> __linkeighth() async {
    if (!await launchUrl(_linkeighth)) {
      throw Exception('Could not launch $_linkeighth');
    }
  }

  Future<void> __linkninth() async {
    if (!await launchUrl(_linkninth)) {
      throw Exception('Could not launch $_linkninth');
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
          "Recommended Websites",
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
              onTap: __linkfirst,
              img:
                  'assets/images/recommended_Websites/6ce130d2365d8b44a294.png',
              title: 'Fotor',
              subtitle: 'For Color',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linksecond,
              img: 'assets/images/recommended_Websites/svgexport-1.png',
              title: 'Cleanup.pictures',
              subtitle: 'For Images',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linkthird,
              img: 'assets/images/recommended_Websites/logo-en.9dfbfa39.png',
              title: 'Picwish',
              subtitle: 'For Images',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linkfourth,
              img: 'assets/images/recommended_Websites/logo.png',
              title: 'Coolors',
              subtitle: 'For Colors',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linkfifth,
              img: 'assets/images/recommended_Websites/svgexport-3.png',
              title: 'Pexels',
              subtitle: 'For Images',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linksixth,
              img: 'assets/images/recommended_Websites/svgexport-19.png',
              title: 'Google Fonts',
              subtitle: 'For Fonts',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linkseventh,
              img:
                  'assets/images/recommended_Websites/5ef3a1148ac97166a06253c1_flutter-logo-white-inset.png',
              title: 'Flutter Ionicons',
              subtitle: 'For Icons',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linkeighth,
              img: 'assets/images/recommended_Websites/svgexport-2.png',
              title: 'Freepik',
              subtitle: 'For Images',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __linkninth,
              img: 'assets/images/recommended_Websites/Flaticon logo.png',
              title: 'Flaticon',
              subtitle: 'For Icons',
            ),
          ],
        ),
      ),
    );
  }
}
