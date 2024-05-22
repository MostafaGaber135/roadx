import 'package:flutter/material.dart';

class CustomHero extends StatelessWidget {
  const CustomHero({super.key, required this.tag, required this.img});
  final String tag;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: tag,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            img,
            fit: BoxFit.cover,
          ),
        ),
      );
  }
}