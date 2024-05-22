import 'package:flutter/material.dart';
import 'package:roadx/main.dart';

class CustomCategories extends StatelessWidget {
  const CustomCategories({super.key, required this.title, required this.img});
  final String title;
  final String img;
  static String id = 'Custom Categories';
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth =
        screenWidth * 0.47;
    final itemHeight =
        itemWidth * 0.7;
    return Card(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: itemWidth,
            height: itemHeight,
            color: Colors.grey[100],
            child: Image.asset(
              img,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6
          ),
        ],
      ),
    );
  }
}
