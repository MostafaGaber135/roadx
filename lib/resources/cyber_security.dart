import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Cyber_Security/ccna_security.dart';
import 'package:roadx/content_of_stacks/Cyber_Security/firewalls.dart';
import 'package:roadx/content_of_stacks/Cyber_Security/learn_the_basics_of_networking.dart';
import 'package:roadx/content_of_stacks/Cyber_Security/studying_linux.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/categories.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class CyberSecurity extends StatelessWidget {
  const CyberSecurity({super.key});
  static String id = 'CyberSecurity';
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
          "Cyber Security",
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
            'Learn the basics of networking',
            'Learning the basics of networking involves familiarizing oneself with fundamental concepts such as the OSI model, TCP/IP stack, and essential networking protocols. This includes understanding how data is organized and transmitted across different layers of the OSI model and the role of protocols like TCP, IP, ARP, and ICMP in network communication. Additionally, grasping concepts like IP addressing, subnetting, and basic network configurations is crucial for setting up and managing networks effectively. These skills serve as the foundation for understanding network architecture and troubleshooting common networking issues Windows Server certification validates skills (MCSA)',
            Colors.indigo,
            1,
          ),
          _buildItem(
            context,
            'CCNA Security',
            'CCNA Security provides foundational knowledge and skills in implementing and monitoring security measures to protect Cisco networks. The certification covers topics such as securing network devices, implementing firewalls, VPNs, and intrusion prevention systems, and implementing AAA (Authentication, Authorization, and Accounting) security protocols. Additionally, it addresses core security concepts, including threat mitigation, endpoint security, and security policies and procedure.',
            Colors.blueAccent,
            2,
          ),
          _buildItem(
            context,
            'Studying Linux',
            'Linux is a widely used open-source operating system kernel that serves as the foundation for various Linux distributions, including Ubuntu, CentOS, Debian, and Fedora. Developed by Linus Torvalds in 1991, Linux is known for its stability, security, and flexibility, making it a popular choice for servers, desktops, embedded systems, and mobile devices.',
            Colors.pink,
            3,
          ),
          _buildItem(
            context,
            'Firewalls',
            'Firewalls are designed to protect networks and systems from unauthorized access, malicious attacks, and unwanted traffic. They enforce security policies by inspecting packets of data and determining whether to allow or block them based on predefined rules.',
            Colors.greenAccent,
            4,
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
    int number,
  ) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case 'Learn the basics of networking':
            Navigator.pushNamed(context, LearnBasicOfNetwork.id);
            break;
          case 'CCNA Security':
            Navigator.pushNamed(context, CCNASecurity.id);
            break;
          case 'Studying Linux':
            Navigator.pushNamed(context, StudyingLinux.id);
            break;
          case 'Firewalls':
            Navigator.pushNamed(context, Firewalls.id);
            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number,
        isFirst: title == 'Learn the basics of networking',
        isLast: title == 'Firewalls',
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
                  '$number. $title',
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
