import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
              child: ListTile(
                leading: const Icon(
                  Icons.circle_rounded,
                  color: Colors.black,
                  size: 20,
                ),
                title: Text(title),
              ),
            );
  }
}