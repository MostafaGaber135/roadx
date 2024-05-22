import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roadx/resources/backend.dart';
import 'package:roadx/resources/cross_platform.dart';
import 'package:roadx/resources/frontend.dart';
import 'package:roadx/resources/network.dart';
import 'package:roadx/widgets/custom_categories.dart';
import 'package:roadx/widgets/pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  Widget build(context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Image.asset(
                "assets/images/Slider1.png",
              ),
              Image.asset(
                "assets/images/Slider2.png",
              ),
              Image.asset(
                "assets/images/Slider3.png",
              ),
            ],
            options: CarouselOptions(
              scrollDirection: Axis.horizontal,
              height: 300,
              aspectRatio: 16 / 8,
              viewportFraction: 1.5,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
            ),
          ),
          const SizedBox(height: 15),
          const Pages(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text(
              "Top Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Frontend.id);
                  },
                  child: const CustomCategories(
                      title: 'Frontend',
                      img: "assets/images/resources/frontend.jpg")),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Backend.id);
                },
                child: const CustomCategories(
                    title: 'Backend',
                    img: "assets/images/resources/backend.png"),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, CrossPlatform.id);
                },
                child: const CustomCategories(
                    title: 'Mobile Application',
                    img: "assets/images/resources/cross_platform.jpg"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Network.id);
                },
                child: const CustomCategories(
                    title: 'Network',
                    img: "assets/images/resources/network.png"),
              ),
            ],
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
