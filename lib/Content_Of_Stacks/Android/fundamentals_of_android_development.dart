import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/android.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _andFundamentalsfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLQkwcJG4YTCSVDhww92llY3CAnc_vUhsm');
final Uri _andFundamentalssecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLlhM4lkb2sEhdllbTIVF0rzD0coCiuHok');
final Uri _andFundamentalsthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLjVLYmrlmjGdDps6HAwOOVoAtBPAgIOXL');
final Uri _andFundamentalsfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLjTzpE6cvFakLb80cpN-9vUcGgL_BbOPI');
final Uri _andFundamentalsfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLMTdZ61eBnypdGHUkZ3f52wTDRywLQo4l');
final Uri _andFundamentalssixth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLQYjhn7xrRna6k47sEYUq2alw9Jtu-Tmz');

class FundamentalsOfAndroidDevelopment extends StatefulWidget {
  const FundamentalsOfAndroidDevelopment({super.key});
  static String id = 'Fundamentals of Android Development';

  @override
  State<FundamentalsOfAndroidDevelopment> createState() =>
      _FundamentalsOfAndroidDevelopmentState();
}

class _FundamentalsOfAndroidDevelopmentState
    extends State<FundamentalsOfAndroidDevelopment> {
  Future<void> __andFundamentalsfirst() async {
    if (!await launchUrl(_andFundamentalsfirst)) {
      throw Exception('Could not launch $_andFundamentalsfirst');
    }
  }

  Future<void> __andFundamentalssecond() async {
    if (!await launchUrl(_andFundamentalssecond)) {
      throw Exception('Could not launch $_andFundamentalssecond');
    }
  }

  Future<void> __andFundamentalsthird() async {
    if (!await launchUrl(_andFundamentalsthird)) {
      throw Exception('Could not launch $_andFundamentalsthird');
    }
  }

  Future<void> __andFundamentalsfouth() async {
    if (!await launchUrl(_andFundamentalsfourth)) {
      throw Exception('Could not launch $_andFundamentalsfourth');
    }
  }

  Future<void> __andFundamentalsfifth() async {
    if (!await launchUrl(_andFundamentalsfifth)) {
      throw Exception('Could not launch $_andFundamentalsfifth');
    }
  }

  Future<void> __andFundamentalssixth() async {
    if (!await launchUrl(_andFundamentalssixth)) {
      throw Exception('Could not launch $_andFundamentalssixth');
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
                MaterialPageRoute(builder: (context) => const AndroidApplication()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Fundamentals of Android Development",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andFundamentalsfirst,
              title: 'Philipp Lackner',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Fundamentalsplaylist1.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andFundamentalssecond,
              title: 'Smart Programming',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Fundamentalsplaylist2.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andFundamentalsthird,
              title: 'WsCube Tech',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/Fundamentalsplaylist3.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andFundamentalsfouth,
              title: 'Lazy programmers',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Fundamentalsplaylist4.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andFundamentalsfifth,
              title: 'Coder Shiyar (كودر شيار)',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Fundamentalsplaylist5.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andFundamentalssixth,
              title: 'م.جعفر محمد الأغا',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/Fundamentalsplaylist6.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
