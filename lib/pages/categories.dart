import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/android.dart';
import 'package:roadx/resources/artificialintelligence.dart';
import 'package:roadx/resources/backend.dart';
import 'package:roadx/resources/cross_platform.dart';
import 'package:roadx/resources/cyber_security.dart';
import 'package:roadx/resources/frontend.dart';
import 'package:roadx/resources/network.dart';
import 'package:roadx/resources/ui_ux_design.dart';
import 'package:roadx/resources/wordpress.dart';
import 'package:roadx/widgets/custom_hero.dart';
import 'package:roadx/widgets/nav.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  static String id = 'Categories';

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      "Frontend",
      "Backend",
      "Wordpress",
      "Android Application",
      "Cross Platform",
      "Network",
      "Cyber Security",
      "Artificial Intelligence",
      "UI/UX Design",
    ];
    List<Widget> images = [
      const CustomHero(
          tag: 'Frontend', img: 'assets/images/resources/frontend.jpg'),
      const CustomHero(
          tag: 'Backend', img: 'assets/images/resources/backend.png'),
      const CustomHero(
          tag: 'Wordpress', img: 'assets/images/resources/wordpress.png'),
      const CustomHero(
          tag: 'Android Application',
          img: 'assets/images/resources/android.jpg'),
      const CustomHero(
          tag: 'Cross Platform',
          img: 'assets/images/resources/cross_platform.jpg'),
      const CustomHero(
          tag: 'Network', img: 'assets/images/resources/network.png'),
      const CustomHero(
          tag: 'Cyber Security',
          img: 'assets/images/resources/cyber_security.jpg'),
      const CustomHero(
          tag: 'Artificial Intelligence',
          img: 'assets/images/resources/artificial-intellegence.jpg'),
      const CustomHero(
          tag: 'UI/UX Design',
          img: 'assets/images/resources/uii_ux_design.png'),
    ];
    final List<Widget> links = [
       const Frontend(),
      const Backend(),
      const Wordpress(),
      const AndroidApplication(),
      const CrossPlatform(),
      const Network(),
      const CyberSecurity(),
      const ArtificialIntelligence(),
      const UIUXDesign(),
    ];
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
          "Categories",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: VerticalCardPager(
                  titles: titles,
                  images: images,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  onSelectedItem: (index) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => links[index]));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
