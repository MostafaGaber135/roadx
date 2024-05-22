import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/main.dart';
import 'package:roadx/widgets/nav.dart';

class About extends StatefulWidget {
  const About({
    super.key,
  });

  static String id = 'About';

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

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
          "About Roadx",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text(
              "About Us",
              style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 25),
                fontWeight: FontWeight.bold,
                color: const Color(0xff607D8B),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "RoadX, where education meets innovation and accessibility. At RoadX, we believe that learning is a journey, and we're dedicated to making this journey inspiring, engaging, and fruitful for learners of all ages.",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 20)),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text(
              "Our Story",
              style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 25),
                fontWeight: FontWeight.bold,
                color: const Color(0xff607D8B),
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "We believe that learning and education are fundamental pillars of human growth and development. These elements serve as the cornerstone of progress, key to unlocking the vast potential of the human mind, and a gateway to a brighter future. Education transcends mere instruction; it represents a metamorphic journey, equipping individuals with the knowledge, skills, and perspectives necessary to navigate the complexities of our ever-changing world.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 20),
                ),
              )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Image.asset("assets/images/banner.png"),
          ),
        ],
      ),
    );
  }
}
