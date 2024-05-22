import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/laravel_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _phpfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLe_UJpVeP8qBr0IotQa16V0TCLsf3db71');
final Uri _phpsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLhiFu-f80eo9iOjY07fJzDe9HKSvgRlXc');
final Uri _phpthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLDoPjvoNmBAy41u35AqJUrI-H83DObUDq');

class PHP extends StatefulWidget {
  const PHP({super.key});
  static String id = 'PHP';

  @override
  State<PHP> createState() => _PHPState();
}

class _PHPState extends State<PHP> {
  Future<void> __phpfirst() async {
    if (!await launchUrl(_phpfirst)) {
      throw Exception('Could not launch $_phpfirst');
    }
  }

  Future<void> __phpsecond() async {
    if (!await launchUrl(_phpsecond)) {
      throw Exception('Could not launch $_phpsecond');
    }
  }

  Future<void> __phpthird() async {
    if (!await launchUrl(_phpthird)) {
      throw Exception('Could not launch $_phpthird');
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
                MaterialPageRoute(builder: (context) => const LaravelBackendDeveloper()),
              );
            },  
          
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "PHP",
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
              onTap: __phpfirst,
              img: 'assets/images/content_of_stacks/php link 1.png',
              title: 'Eraasoft',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __phpsecond,
              img: 'assets/images/content_of_stacks/php link 2.png',
              title: 'Tecno U',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __phpthird,
              img: 'assets/images/content_of_stacks/php link 3.png',
              title: 'Elzero Web School',
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
