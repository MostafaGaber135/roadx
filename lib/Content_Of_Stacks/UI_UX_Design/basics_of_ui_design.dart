import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_basics_of_ui_design/Photos.dart';
import 'package:roadx/pages_basics_of_ui_design/color_inspiration.dart';
import 'package:roadx/pages_basics_of_ui_design/colors_palette.dart';
import 'package:roadx/pages_basics_of_ui_design/custom_icons.dart';
import 'package:roadx/pages_basics_of_ui_design/grid.dart';
import 'package:roadx/pages_basics_of_ui_design/guidelines.dart';
import 'package:roadx/pages_basics_of_ui_design/illustrations.dart';
import 'package:roadx/pages_basics_of_ui_design/typography.dart';
import 'package:roadx/resources/ui_ux_design.dart';

class BasicsOfUIDesign extends StatelessWidget {
  BasicsOfUIDesign({super.key});
  static String id = 'Basics of UI Design';

  final List<String> gridTitles = [
    "Color Inspiration",
    "Colors Palette",
    "Photos",
    "Icons",
    "Illustrations",
    "Grid",
    'Typography',
    'Guidelines',
  ];

  final List<Widget> navigationTargets = [
    const ColorInspiration(),
    const ColorsPalette(),
    const Photos(),
    const CustomIcons(),
    const Illustrations(),
    const Grid(),
    const CustomTypography(),
    const Guidelines(),
  ];

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
          "Basics of UI Design",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(gridTitles.length, (index) {
          return InkWell(
            onTap: () {
              // Navigate to the corresponding page
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => navigationTargets[index]),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(4.0),
              child: GridTile(
                footer: Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: Text(
                      gridTitles[index],
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                child: Image.asset(
                  'assets/images/ui_uxdesign.png', 
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
