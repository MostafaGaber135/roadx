import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/flask_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri _pythonfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLsyeobzWxl7poL9JTVyndKe62ieoN-MZ3');
final Uri _pythonsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLDoPjvoNmBAyE_gei5d18qkfIe-Z8mocs');
final Uri _pythonthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLuXY3ddo_8nzrO74UeZQVZOb5-wIS6krJ');
class Python extends StatefulWidget {
  const Python({super.key});
static String id = 'Python';

  @override
  State<Python> createState() => _PythonState();
}

class _PythonState extends State<Python> {
  Future<void> __pythonfirst() async {
    if (!await launchUrl(_pythonfirst)) {
      throw Exception('Could not launch $_pythonfirst');
    }
  }

  Future<void> __pythonsecond() async {
    if (!await launchUrl(_pythonsecond)) {
      throw Exception('Could not launch $_pythonsecond');
    }
  }

  Future<void> __pythonthird() async {
    if (!await launchUrl(_pythonthird)) {
      throw Exception('Could not launch $_pythonthird');
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
                MaterialPageRoute(builder: (context) => const FlaskBackendDeveloper()),
              );
            },   
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Python",
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
              onTap: __pythonfirst,
              img: 'assets/images/content_of_stacks/python link 1.png',
              title: 'Telusko',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __pythonsecond,
              img: 'assets/images/content_of_stacks/python link 2.png',
              title: 'Elzero Web School',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __pythonthird,
              img: 'assets/images/content_of_stacks/python link 3.png',
              title: 'Codezilla',
              subtitle: 'Arabic',
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

