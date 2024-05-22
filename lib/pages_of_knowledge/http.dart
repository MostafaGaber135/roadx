import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/knowledge.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _httpfirst = Uri.parse('https://www.youtube.com/watch?v=hExRDVZHhig');
final Uri _httpsecond =
    Uri.parse('https://www.youtube.com/watch?v=wW2A5SZ3GkI');
final Uri _httpthird = Uri.parse('https://www.youtube.com/watch?v=CtPWdpi4g6U');
final Uri _httpfourth =
    Uri.parse('https://www.youtube.com/watch?v=hLnJHHzWaFI');

class HTTP extends StatefulWidget {
  const HTTP({super.key});
  static String id = 'HTTP';

  @override
  State<HTTP> createState() => _HTTPState();
}

class _HTTPState extends State<HTTP> {
  Future<void> __httpfirst() async {
    if (!await launchUrl(_httpfirst)) {
      throw Exception('Could not launch $_httpfirst');
    }
  }

  Future<void> __httpsecond() async {
    if (!await launchUrl(_httpsecond)) {
      throw Exception('Could not launch $_httpsecond');
    }
  }

  Future<void> __httpthird() async {
    if (!await launchUrl(_httpthird)) {
      throw Exception('Could not launch $_httpthird');
    }
  }

  Future<void> __httpfourth() async {
    if (!await launchUrl(_httpfourth)) {
      throw Exception('Could not launch $_httpfourth');
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
                MaterialPageRoute(builder: (context) => const Knowledge()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "HTTP",
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
              onTap: __httpfirst,
              img: 'assets/images/knowledge/http link 1.png',
              title: 'PowerCert Animated Videos',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __httpsecond,
              img: 'assets/images/knowledge/http link 2.png',
              title: 'FollowAndrew',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __httpthird,
              img: 'assets/images/knowledge/http link 3.png',
              title: 'Tech Quotes',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __httpfourth,
              img: 'assets/images/knowledge/http link 4.png',
              title: 'Elkhawarizmy',
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
