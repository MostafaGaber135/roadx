import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/templates.dart';

class FrontEndTemplates extends StatelessWidget {
  const FrontEndTemplates({super.key});
  static String id = 'FrontEnd Templates';
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
            ),
          ),
          elevation: 0.0,
          title: const Text(
            "Frontend Templates",
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
                    'assets/images/Templates/template1/Screenshot_1.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template1/Screenshot_2.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template1/Screenshot_3.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template1/Screenshot_4.png',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template2/Screenshot_2.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template2/Screenshot_1.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template2/Screenshot_3.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template2/Screenshot_4.png',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template3/Screenshot_1.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template3/Screenshot_2.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template3/Screenshot_3.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Templates/template3/Screenshot_4.png',
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
