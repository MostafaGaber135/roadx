import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Network/fundamentals_of_network.dart';
import 'package:roadx/content_of_stacks/Network/network_protocols_and_ccna_fundamentals.dart';
import 'package:roadx/content_of_stacks/Network/windows_server_certification_validates_skills.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/categories.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class Network extends StatelessWidget {
  const Network({super.key});
  static String id = 'Network';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Categories()),
              );
            },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        title: const Text(
          "Network",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        children: [
          _buildItem(
            context,
            'Fundamentals of Network',
            'The fundamentals of network in network, often abbreviated as NIN, refer to a concept in computer networking where a network is encapsulated within another network.',
            Colors.indigo,
            1, 
          ),
          _buildItem(
            context,
            'Network protocols and CCNA Fundamentals',
            'Network protocols are a set of rules and conventions that govern how data is transmitted and received over a network. These protocols define the format and sequence of messages exchanged between devices to enable communication.',
            Colors.blueAccent,
            2, 
          ),
          _buildItem(
            context,
            'Windows Server certification validates skills (MCSA)',
            'The Microsoft Certified Solutions Associate (MCSA) : Windows Server certification validates the skills and knowledge required to effectively manage and maintain Windows Server environments.',
            Colors.pink,
            3, 
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
    BuildContext context,
    String title,
    String description,
    Color color,
    int number, // Added parameter for the number of the timeline
  ) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case 'Fundamentals of Network':
            Navigator.pushNamed(context, FundamentalsOfNetwork.id);
            break;
          case 'Network protocols and CCNA Fundamentals':
            Navigator.pushNamed(
                context, NetworkProtocolsAndCCNAFundamentals.id);
            break;
          case 'Windows Server certification validates skills (MCSA)':
            Navigator.pushNamed(context, WindowsServer.id);
            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number, // Pass the number to CustomTimeLineTile
        isFirst: title == 'Fundamentals of network',
        isLast: title == 'Windows Server certification validates skills (MCSA)',
        endChild: Container(
          height: 150,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              right: BorderSide(
                width: 3,
                color: color,
              ),
              bottom: BorderSide(
                width: 3,
                color: color,
              ),
            ),
            boxShadow: const [
              BoxShadow(
                blurRadius: 3,
                color: Colors.black26,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                Flexible(
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
