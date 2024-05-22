import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/wordpress.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _wordpresxamppfirst =
    Uri.parse('https://www.youtube.com/watch?v=OT6VSmHMxmY');
final Uri _wordpresxamppsecond =
    Uri.parse('https://www.youtube.com/watch?v=r0lDDeVkaks');
final Uri _wordpresxamppthird =
    Uri.parse('https://www.youtube.com/watch?v=60GRHPnAlwU');

class XAMPP extends StatefulWidget {
  const XAMPP({super.key});
  static String id = 'XAMPP';

  @override
  State<XAMPP> createState() => _XAMPPState();
}

class _XAMPPState extends State<XAMPP> {
  Future<void> __wordpresxamppfirst() async {
    if (!await launchUrl(_wordpresxamppfirst)) {
      throw Exception('Could not launch $_wordpresxamppfirst');
    }
  }

  Future<void> __wordpresxamppsecond() async {
    if (!await launchUrl(_wordpresxamppsecond)) {
      throw Exception('Could not launch $_wordpresxamppsecond');
    }
  }

  Future<void> __wordpresxamppthird() async {
    if (!await launchUrl(_wordpresxamppthird)) {
      throw Exception('Could not launch $_wordpresxamppthird');
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
          "XAMPP",
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
              onTap: __wordpresxamppfirst,
              img: 'assets/images/content_of_stacks/wordpress_xampp_first.png',
              title: 'Amit Thinks',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpresxamppsecond,
              img: 'assets/images/content_of_stacks/wordpress_xampp_second.png',
              title: 'Crash Programming',
              subtitle: 'Single Video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpresxamppthird,
              img: 'assets/images/content_of_stacks/wordpress_xampp_third.png',
              title: 'Arabitec',
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
