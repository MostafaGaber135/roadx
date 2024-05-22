import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/network.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _fundamentalsofnetworkfirst = Uri.parse(
    'https://www.youtube.com/watch?v=9SIjoeE93lo&list=PLDQaRcbiSnqF5U8ffMgZzS7fq1rHUI3Q8&pp=iAQB');
final Uri _fundamentalsofnetworksecond = Uri.parse(
    'https://www.youtube.com/watch?v=bj-Yfakjllc&list=PLIFyRwBY_4bRLmKfP1KnZA6rZbRHtxmXi');
final Uri _fundamentalsofnetworkthird = Uri.parse(
    'https://www.youtube.com/watch?v=S7MNX_UD7vY&list=PLIhvC56v63IJVXv0GJcl9vO5Z6znCVb1P');
final Uri _fundamentalsofnetworkfourth = Uri.parse(
    'https://www.youtube.com/watch?v=0AcpUwnc12E&list=PLkW9FMxqUvyZaSQNQslneeODER3bJCb2K');
final Uri _fundamentalsofnetworkfifth = Uri.parse(
    'https://www.youtube.com/watch?v=jExP6TBZUOk&list=PLS0spxc8nUsDqFzwOUXrJfdncOVpDRXdE');
final Uri _fundamentalsofnetworksixth = Uri.parse(
    'https://www.youtube.com/watch?v=-BIbHsVrBQ8&list=PLjEjN3kziQ45zTd6MjWiltUgybVCzGBao');
final Uri _fundamentalsofnetworkseventh = Uri.parse(
    'https://www.youtube.com/watch?v=q6tUCEUqxTQ&list=PL8s4OGp0649_e_Wbz5MlBgW5rBW-9hD0c');

class FundamentalsOfNetwork extends StatefulWidget {
  const FundamentalsOfNetwork({super.key});
  static String id = 'Fundamentals Of Network';

  @override
  State<FundamentalsOfNetwork> createState() => _FundamentalsOfNetworkState();
}

class _FundamentalsOfNetworkState extends State<FundamentalsOfNetwork> {
  Future<void> __fundamentalsofnetworkfirst() async {
    if (!await launchUrl(_fundamentalsofnetworkfirst)) {
      throw Exception('Could not launch $_fundamentalsofnetworkfirst');
    }
  }

  Future<void> __fundamentalsofnetworksecond() async {
    if (!await launchUrl(_fundamentalsofnetworksecond)) {
      throw Exception('Could not launch $_fundamentalsofnetworksecond');
    }
  }

  Future<void> __fundamentalsofnetworkthird() async {
    if (!await launchUrl(_fundamentalsofnetworkthird)) {
      throw Exception('Could not launch $_fundamentalsofnetworkthird');
    }
  }

  Future<void> __fundamentalsofnetworkfourth() async {
    if (!await launchUrl(_fundamentalsofnetworkfourth)) {
      throw Exception('Could not launch $_fundamentalsofnetworkfourth');
    }
  }

  Future<void> __fundamentalsofnetworkfifth() async {
    if (!await launchUrl(_fundamentalsofnetworkfifth)) {
      throw Exception('Could not launch $_fundamentalsofnetworkfifth');
    }
  }

  Future<void> __fundamentalsofnetworksixth() async {
    if (!await launchUrl(_fundamentalsofnetworksixth)) {
      throw Exception('Could not launch $_fundamentalsofnetworksixth');
    }
  }

  Future<void> __fundamentalsofnetworkseventh() async {
    if (!await launchUrl(_fundamentalsofnetworkseventh)) {
      throw Exception('Could not launch $_fundamentalsofnetworkseventh');
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
                MaterialPageRoute(builder: (context) => const Network()),
              );
            },
          
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Fundamentals Of Network",
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
              onTap: __fundamentalsofnetworkfirst,
              img:
                  'assets/images/content_of_stacks/link 1 of fundamentals of network.jpg',
              title: 'Network direction  channel',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofnetworksecond,
              img:
                  'assets/images/content_of_stacks/link 2 fundamentals of network.jpg',
              title: 'Practical network',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofnetworkthird,
              img:
                  'assets/images/content_of_stacks/link 3 of fundamentals of network.jpg',
              title: 'Network chunk',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofnetworkfourth,
              img:
                  'assets/images/content_of_stacks/Link 1 of fundamentals of network hindi .jpg',
              title: 'Bitten Tech channel',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofnetworkfifth,
              img:
                  'assets/images/content_of_stacks/Fundamentals of network hindi link 2 .jpg',
              title: 'shesh chauhan IT Trainer',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofnetworksixth,
              img:
                  'assets/images/content_of_stacks/link 1 of fundamentals of network عربي.jpg',
              title: 'اساسيات الشبكات من محمد ابراهيم',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofnetworkseventh,
              img:
                  'assets/images/content_of_stacks/Link 2 of fundamentals of network عربي.jpg',
              title: 'ItDose',
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
