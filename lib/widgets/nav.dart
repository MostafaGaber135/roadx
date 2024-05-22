import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/chatbot.dart';
import 'package:roadx/pages/homepage.dart';
import 'package:roadx/widgets/custom_drawer.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});
  static String id = 'Nav';
  @override
  NavState createState() => NavState();
}

class NavState extends State<Nav> {
  int selectedItemIndex = 0;
  final List<Widget> _widgets = [
    const HomePage(),
    const Chatbot(),
  ];
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                );
              },
            )
          ],
          leading: Container(
            margin: const EdgeInsets.only(left: 20),
            child: Image.asset("assets/images/logo.png"),
          ),
          titleSpacing: 5,
          leadingWidth: 60,
          title: const Text(
            "Roadx",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: kPrimaryColor),
          bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          hoverColor: Colors.grey.shade700,
          haptic: true,
          tabBorderRadius: 15,
          tabActiveBorder: Border.all(color: Colors.grey, width: 1),
          tabBorder: Border.all(color: Colors.grey, width: 1),
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 800),
          gap: 8,
          onTabChange: (index) {
            setState(
              () {
                selectedItemIndex = index;
              },
            );
          },
          color: const Color(0xff727272),
          iconSize: 24,
          tabBackgroundColor: Colors.blue.shade800.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.chat,
              text: 'Chatbot',
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgets[selectedItemIndex],
      ),
      endDrawer: const CustomDrawer(),
    );
  }
}
