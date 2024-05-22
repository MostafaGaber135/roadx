import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/templates.dart';

class CrossplatformTemplates extends StatelessWidget {
  const CrossplatformTemplates({super.key});
  static String id = 'Crossplatform Templates';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          leading: IconButton(
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Templates()),
              );
            },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),),
          elevation: 0.0,
          title: const Text(
            "Crossplatform Templates",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Symbols.temp_preferences_custom_sharp,
                    color: Colors.white),
              ),
              Tab(
                icon: Icon(Symbols.temp_preferences_custom_sharp,
                    color: Colors.white),
              ),
              Tab(
                icon: Icon(Symbols.temp_preferences_custom_sharp,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Image.asset(
                'assets/images/Templates/Templates_Flutter/templates 1.jpg'),
            Image.asset(
                'assets/images/Templates/Templates_Flutter/templates 2.jpg'),
            Image.asset(
                'assets/images/Templates/Templates_Flutter/templates 3.jpg'),
          ],
        ), 
      ),
    );
  }
}
