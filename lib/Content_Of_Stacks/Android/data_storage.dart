import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/android.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _andFundamentalsfirst = Uri.parse(
    'https://www.youtube.com/watch?v=312RhjfetP8&pp=ygUpc3FsaXRlIGRhdGFiYXNlIGZvciBhbmRyb2lkIC0gZnVsbCBjb3Vyc2U%3D');
final Uri _andFundamentalssecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLSrm9z4zp4mGK0g_0_jxYGgg3os9tqRUQ');
final Uri _andFundamentalsthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLS1QulWo1RIaRdy16cOzBO5Jr6kEagA07');
final Uri _andFundamentalsfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PL9vy4y29rrd4SfLCBWuJ1HUqoFo1JKndl');
final Uri _andFundamentalsfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLb6ZzJ93PVwowMYoqLM41OVm80AndaLir');

class DataStorage extends StatefulWidget {
  const DataStorage({super.key});
  static String id = 'Data Storage';

  @override
  State<DataStorage> createState() => _DataStorageState();
}

class _DataStorageState extends State<DataStorage> {
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
          "Data Storage",
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
              title: 'freeCodeCamp.org',
              subtitle: 'single video - English',
              img:
                  'assets/images/content_of_stacks/DataStoragesingle video.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andFundamentalssecond,
              title: 'Stevdza-San',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/DataStorageplaylist2.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andFundamentalsthird,
              title: 'ProgrammingKnowledge',
              subtitle: 'English',
              img: 'assets/images/content_of_stacks/DataStorageplaylist 3.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andFundamentalsfouth,
              title: 'Nadim GOUIA',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/DataStorageplaylist 4.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __andFundamentalsfifth,
              title: 'Ahmed Azz',
              subtitle: 'Arabic',
              img: 'assets/images/content_of_stacks/DataStorageplaylist 5.jpg',
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
