import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Back_End/laravel_backend_developer.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _laravelfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLftLUHfDSiZ4GfPZxaFDsA7ejUzD7SpWa');
final Uri _laravelsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLDoPjvoNmBAy_mAhY0x8cHf8oSGPKsEKP');
final Uri _laravelthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLCm7ZeRfGSP4NNEikwx3wUAskQHB3p-LK');

class Laravel extends StatefulWidget {
  const Laravel({super.key});
  static String id = 'Laravel';

  @override
  State<Laravel> createState() => _LaravelState();
}

class _LaravelState extends State<Laravel> {
  Future<void> __laravelfirst() async {
    if (!await launchUrl(_laravelfirst)) {
      throw Exception('Could not launch $_laravelfirst');
    }
  }

  Future<void> __laravelsecond() async {
    if (!await launchUrl(_laravelsecond)) {
      throw Exception('Could not launch $_laravelsecond');
    }
  }

  Future<void> __laravelthird() async {
    if (!await launchUrl(_laravelthird)) {
      throw Exception('Could not launch $_laravelthird');
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
                MaterialPageRoute(
                    builder: (context) => const LaravelBackendDeveloper()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Laravel",
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
              onTap: __laravelfirst,
              img: 'assets/images/content_of_stacks/laravel link 1.png',
              title: 'Mora Soft',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __laravelsecond,
              img: 'assets/images/content_of_stacks/laravel link 2.png',
              title: 'Elzero web school',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __laravelthird,
              img: 'assets/images/content_of_stacks/laravel link 3.png',
              title: 'Ahmed Emam',
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
