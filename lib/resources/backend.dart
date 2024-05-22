import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/dotnet_backend_developer.dart';
import 'package:roadx/content_of_stacks/Back_End/flask_backend_developer.dart';
import 'package:roadx/content_of_stacks/Back_End/laravel_backend_developer.dart';
import 'package:roadx/content_of_stacks/Back_End/mern_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/categories.dart';

class Backend extends StatelessWidget {
  const Backend({super.key});
  static String id = 'Backend';
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Laravel Backend Developer",
      "Mern Backend Developer",
      "Flask Backend Developer",
      ".net Backend Developer",
    ];
    final List<Widget> navigationTargets = [
      const LaravelBackendDeveloper(),
      const MernBackendDeveloper(),
      const FlaskBackendDeveloper(),
      const DotNetBackendDeveloper(),
    ];
    final List<String> images = [
      'assets/images/backend_developer/laravel.png',
      'assets/images/backend_developer/mern.png',
      'assets/images/backend_developer/flask.png',
      'assets/images/backend_developer/dotnet.png',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
           onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Categories()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Backend",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: List.generate(titles.length, (index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      navigationTargets[index % navigationTargets.length],
                ),
              );
            },
            child: Container(
              width: 500,
              margin: const EdgeInsets.all(4.0),
              child: GridTile(
                footer: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.black.withOpacity(0.5),
                  child: Text(
                    titles[index],
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                child: Image.asset(
                  images[index % images.length],
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
