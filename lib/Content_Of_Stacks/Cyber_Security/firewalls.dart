import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/cyber_security.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _firewallsfirst = Uri.parse(
    'https://www.youtube.com/watch?v=gqE7WMEEY_4&list=PLaUiizP3D7fMvOsxFInBKquo-_s05jx4v');
final Uri _firewallssecond = Uri.parse(
    'https://www.youtube.com/watch?v=gtjHuvTgzHE&list=PLsd7lkkL5kOc4UjW1pBYhjKuEAEWrp5oC');
final Uri _firewallsthird = Uri.parse(
    'https://www.youtube.com/watch?v=wLLlVKvhVYM&list=PLySxAD9v-0wegbpuY8Hry1TI_est_Ovl9');
final Uri _firewallsfourth = Uri.parse(
    'https://www.youtube.com/watch?v=PVS6mTwgKbU&list=PLLlr6jKKdyK2FJ4aoTkvAXBwe_k_Bq2Wa');
final Uri _firewallsfifth = Uri.parse(
    'https://www.youtube.com/watch?v=EbG5Le6y-oA&list=PLLlr6jKKdyK1gQXBHe2C28sIc_bgCoyqi');
final Uri _firewallssixth = Uri.parse(
    'https://www.youtube.com/watch?v=hvIatX1UpBw&list=PLLlr6jKKdyK2IzNFNSl-ACoFvaFAe49v1');

class Firewalls extends StatefulWidget {
  const Firewalls({super.key});
  static String id = 'Firewalls';

  @override
  State<Firewalls> createState() => _FirewallsState();
}

class _FirewallsState extends State<Firewalls> {
  Future<void> __firewallsfirst() async {
    if (!await launchUrl(_firewallsfirst)) {
      throw Exception('Could not launch $_firewallsfirst');
    }
  }

  Future<void> __firewallssecond() async {
    if (!await launchUrl(_firewallssecond)) {
      throw Exception('Could not launch $_firewallssecond');
    }
  }

  Future<void> __firewallsthird() async {
    if (!await launchUrl(_firewallsthird)) {
      throw Exception('Could not launch $_firewallsthird');
    }
  }

  Future<void> __firewallsfourth() async {
    if (!await launchUrl(_firewallsfourth)) {
      throw Exception('Could not launch $_firewallsfourth');
    }
  }

  Future<void> __firewallsfifth() async {
    if (!await launchUrl(_firewallsfifth)) {
      throw Exception('Could not launch $_firewallsfifth');
    }
  }

  Future<void> __firewallssixth() async {
    if (!await launchUrl(_firewallssixth)) {
      throw Exception('Could not launch $_firewallssixth');
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
                MaterialPageRoute(builder: (context) => const CyberSecurity()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Firewalls",
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
              onTap: __firewallsfirst,
              img: 'assets/images/content_of_stacks/firewalls first link.png',
              title: 'Bikash\'s Tech',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __firewallssecond,
              img: 'assets/images/content_of_stacks/firewalls second link.png',
              title: 'jittu jaiswal',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __firewallsthird,
              img: 'assets/images/content_of_stacks/firewalls third link.png',
              title: 'Astrit Krasniqi',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __firewallsfourth,
              img: 'assets/images/content_of_stacks/firewalls third link.png',
              title: 'FortiGate Firewall شرح بالعربي للمهندس محمد فوزي',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __firewallsfifth,
              img: 'assets/images/content_of_stacks/firewalls fifth link.png',
              title: 'FortiGate Firewall شرح بالعربي للمهندس سعيد عبدالحليم',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __firewallssixth,
              img: 'assets/images/content_of_stacks/firewalls sixth link.png',
              title: 'Palo Alto Firewall شرح بالعربي للمهندس مصطفي الليثي',
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
