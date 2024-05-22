import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/templates.dart';

class UIUXDesignTemplates extends StatelessWidget {
  const UIUXDesignTemplates({super.key});
  static String id = 'UI uX Design Templates';
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
              )),
          elevation: 0.0,
          title: const Text(
            "UI/UX Design Templates",
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
                'assets/images/Templates/Templates ui ux design/Templates 1.png'),
            Image.asset(
                'assets/images/Templates/Templates ui ux design/Templates 2.png'),
            Image.asset(
                'assets/images/Templates/Templates ui ux design/Templates 3.png'),
          ],
        ),
      ),
    );
  }
}
