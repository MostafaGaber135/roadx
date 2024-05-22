import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/templates.dart';

class NetworkTemplates extends StatelessWidget {
  const NetworkTemplates({super.key});
  static String id = 'Network Templates';
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
            "Network Templates",
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
                'assets/images/Templates/Templates_Network/WhatsApp Image 2024-04-19 at 20.49.43_b6905163.jpg'),
            Image.asset(
                'assets/images/Templates/Templates_Network/WhatsApp Image 2024-04-19 at 20.52.07_39cc9e84.jpg'),
            Image.asset(
                'assets/images/Templates/Templates_Network/renditionDownload.jpeg'),
          ],
        ),
      ),
    );
  }
}
