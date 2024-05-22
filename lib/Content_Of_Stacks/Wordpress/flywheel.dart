import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/wordpress.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _wordpressflywheelfirst =
    Uri.parse('https://www.youtube.com/watch?v=4uvUqM9Jfy0');
final Uri _wordpressflywheelsecond =
    Uri.parse('https://www.youtube.com/watch?v=_ztk5KQtCXM');
final Uri _wordpressflywheelthird =
    Uri.parse('https://www.youtube.com/watch?v=AQOwp3Zb8p0');
final Uri _wordpressflywheelfourth =
    Uri.parse('https://www.youtube.com/watch?v=8989AjPIM2c');

class Flywheel extends StatefulWidget {
  const Flywheel({super.key});
  static String id = 'Flywheel';

  @override
  State<Flywheel> createState() => _FlywheelState();
}

class _FlywheelState extends State<Flywheel> {
  Future<void> __wordpressflywheelfirst() async {
    if (!await launchUrl(_wordpressflywheelfirst)) {
      throw Exception('Could not launch $_wordpressflywheelfirst');
    }
  }

  Future<void> __wordpressflywheelsecond() async {
    if (!await launchUrl(_wordpressflywheelsecond)) {
      throw Exception('Could not launch $_wordpressflywheelsecond');
    }
  }

  Future<void> __wordpressflywheelthird() async {
    if (!await launchUrl(_wordpressflywheelthird)) {
      throw Exception('Could not launch $_wordpressflywheelthird');
    }
  }

  Future<void> __wordpressflywheelfourth() async {
    if (!await launchUrl(_wordpressflywheelfourth)) {
      throw Exception('Could not launch $_wordpressflywheelfourth');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Wordpress()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Flywheel",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressflywheelfirst,
              img:
                  'assets/images/content_of_stacks/wordpress_flywheel_first.png',
              title: 'Jeffrey @ Lytbox',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressflywheelsecond,
              img:
                  'assets/images/content_of_stacks/wordpress_flywheel_second.png',
              title: 'Wp&SEO Tricks',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressflywheelthird,
              img:
                  'assets/images/content_of_stacks/wordpress_flywheel_third.png',
              title: 'انطلق أونلاين',
              subtitle: 'Single Video - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressflywheelfourth,
              img:
                  'assets/images/content_of_stacks/wordpress_flywheel_fourth.png',
              title: 'أيمن تُكر - Aymen Tucker',
              subtitle: 'Single Video - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
