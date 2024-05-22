import 'package:flutter/material.dart';

class CustomListTileForAPI extends StatelessWidget {
  const CustomListTileForAPI({
    super.key,
    required this.onTap,
    required this.img,
    required this.title,
    required this.subtitle,
  });

  final VoidCallback onTap;
  final String img;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.network(
        img,
        height: 100,
        width: 100,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      tileColor: const Color(0xFF86C3FD),
      contentPadding: const EdgeInsets.all(10),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.black87),
      ),
    );
  }
}
