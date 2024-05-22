import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/network.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _networkprotocolsandccnafirst = Uri.parse(
    'https://www.youtube.com/watch?v=H8W9oMNSuwo&list=PLxbwE86jKRgMpuZuLBivzlM8s2Dk5lXBQ');
final Uri _networkprotocolsandccnasecond = Uri.parse(
    'https://www.youtube.com/watch?v=Acg-cj0d51Y&list=PLAqaqJU4wzYVW-_eHijUr6PjoBCnG3ixU');
final Uri _networkprotocolsandccnathird = Uri.parse(
    'https://www.youtube.com/watch?v=S7MNX_UD7vY&list=PLIhvC56v63IJVXv0GJcl9vO5Z6znCVb1P');
final Uri _networkprotocolsandccnafourth = Uri.parse(
    'https://www.youtube.com/watch?v=4u3LVXDOkyw&list=PLpwHU9rNXAVurp2h2Jh-cd4-8XjkT5osu');
final Uri _networkprotocolsandccnafifth = Uri.parse(
    'https://www.youtube.com/watch?v=J2xws7u7ZeM&list=PL77yNtB4-LjnN2FU3h1v5hIJOHZfW9ugq');
final Uri _networkprotocolsandccnasixth = Uri.parse(
    'https://www.youtube.com/watch?v=JaLlJ2hUXC8&list=PLLlr6jKKdyK2cNjQnBcSfGab2k9KNsUmg');
final Uri _networkprotocolsandccnaseventh = Uri.parse(
    'https://www.youtube.com/watch?v=VMI1z5h5Jy4&list=PLLlr6jKKdyK3JYsGq_jEcNx-EHF4lqXHP');

class NetworkProtocolsAndCCNAFundamentals extends StatefulWidget {
  const NetworkProtocolsAndCCNAFundamentals({super.key});
  static String id = 'Network Protocols And CCNA Fundamentals';

  @override
  State<NetworkProtocolsAndCCNAFundamentals> createState() =>
      _NetworkProtocolsAndCCNAFundamentalsState();
}

class _NetworkProtocolsAndCCNAFundamentalsState
    extends State<NetworkProtocolsAndCCNAFundamentals> {
  Future<void> __networkprotocolsandccnafirst() async {
    if (!await launchUrl(_networkprotocolsandccnafirst)) {
      throw Exception('Could not launch $_networkprotocolsandccnafirst');
    }
  }

  Future<void> __networkprotocolsandccnasecond() async {
    if (!await launchUrl(_networkprotocolsandccnasecond)) {
      throw Exception('Could not launch $_networkprotocolsandccnasecond');
    }
  }

  Future<void> __networkprotocolsandccnathird() async {
    if (!await launchUrl(_networkprotocolsandccnathird)) {
      throw Exception('Could not launch $_networkprotocolsandccnathird');
    }
  }

  Future<void> __networkprotocolsandccnafourth() async {
    if (!await launchUrl(_networkprotocolsandccnafourth)) {
      throw Exception('Could not launch $_networkprotocolsandccnafourth');
    }
  }

  Future<void> __networkprotocolsandccnafifth() async {
    if (!await launchUrl(_networkprotocolsandccnafifth)) {
      throw Exception('Could not launch $_networkprotocolsandccnafifth');
    }
  }

  Future<void> __networkprotocolsandccnasixth() async {
    if (!await launchUrl(_networkprotocolsandccnasixth)) {
      throw Exception('Could not launch $_networkprotocolsandccnasixth');
    }
  }

  Future<void> __networkprotocolsandccnaseventh() async {
    if (!await launchUrl(_networkprotocolsandccnaseventh)) {
      throw Exception('Could not launch $_networkprotocolsandccnaseventh');
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
          "Network Protocols And CCNA Fundamentals",
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
              onTap: __networkprotocolsandccnafirst,
              img:
                  'assets/images/content_of_stacks/link 1  of ccna of english.jpg',
              title: 'Jeremy\'s IT Lab',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkprotocolsandccnasecond,
              img: 'assets/images/content_of_stacks/link 2 of ccna english.jpg',
              title: 'III-Networking',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkprotocolsandccnathird,
              img:
                  'assets/images/content_of_stacks/link of 3 of ccna english.jpg',
              title: 'Networkchunk',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkprotocolsandccnafourth,
              img: 'assets/images/content_of_stacks/link 1 of ccna arabic.jpg',
              title: 'Ahmed Elhefny',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkprotocolsandccnafifth,
              img: 'assets/images/content_of_stacks/link 2 of  ccna arabic.jpg',
              title: 'Ahmed Nazmy',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkprotocolsandccnasixth,
              img:
                  'assets/images/content_of_stacks/link of 3 of ccna arabic.jpg',
              title: 'Eng-Walid Saad Eldin',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkprotocolsandccnaseventh,
              img: 'assets/images/content_of_stacks/link 4 of ccna arabic.jpg',
              title: 'Eng abeer hosny',
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
