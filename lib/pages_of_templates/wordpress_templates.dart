import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/templates.dart';

class WordpressTemplates extends StatelessWidget {
  const WordpressTemplates({super.key});
  static String id = 'Wordpress Templates';
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
            "Wordpress Templates",
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
            Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 1/wp1-1.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 1/wp1-2.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 1/wp1-3.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 1/wp1-4.png',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 2/wp2-1.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 2/wp2-2.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 2/wp2-3.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 2/wp2-4.png',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 3/wp3-1.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 3/wp3-2.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 3/wp3-3.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/wordpress template 3/wp3-4.png',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
