import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/nav.dart';
import 'package:typing_animation/typing_animation_code.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static String id = 'welcomescreen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.1),
            SlideTransition(
              position: _offsetAnimation,
              child: CircleAvatar(
                maxRadius: height * 0.1,
                backgroundColor: Colors.transparent,
                backgroundImage: const AssetImage(klogosplashscreen),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            const Text(
              'Hi there,',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Trirong',
                fontSize: 32,
              ),
            ),
            const Text(
              'I\'m Roadx',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Trirong',
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            const TypingAnimation(
              text: 'Your new Personal Journaling companion \u2764\uFE0F',
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            ElevatedButton(
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Nav()),
              );
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Border radius
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Let's Start",
                  style: TextStyle(
                    fontSize: 26,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Trirong',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
