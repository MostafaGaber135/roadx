import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/extra_knowledge.dart';
import 'package:roadx/pages_of_knowledge/domain.dart';
import 'package:roadx/pages_of_knowledge/hosting.dart';
import 'package:roadx/pages_of_knowledge/http.dart';
import 'package:roadx/pages_of_knowledge/servers.dart';
import 'package:roadx/pages_of_knowledge/tcp_ip.dart';
import 'package:roadx/pages_of_knowledge/www.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({super.key});
  static String id = 'Knowledge';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ExtraKnowledge()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Knowledge",
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
            'WWW',
            'The World Wide Web (WWW), often simply called the Web, is an information system where documents and other web resources are identified by Uniform Resource Locators (URLs), interlinked by hypertext links, and can be accessed via the internet.',
            Colors.indigo,
            1,
          ),
          _buildItem(
            context,
            'TCP/IP',
            'TCP/IP, short for Transmission Control Protocol/Internet Protocol, is a foundational set of networking protocols that enable communication between computers and networks across the internet. Developed in the 1970s, TCP/IP defines how data is transmitted, routed, and received over interconnected networks, ensuring reliable and efficient communication.',
            Colors.blueAccent,
            2,
          ),
          _buildItem(
            context,
            'Hosting',
            'Hosting refers to the service of storing and maintaining files, data, and applications on a server that is accessible via the internet. It enables individuals and organizations to make their websites, web applications, and other digital content available to users worldwide. Hosting providers offer different types of hosting plans, including shared hosting, virtual private servers (VPS), dedicated hosting, and cloud hosting, each with its own resources and capabilities.',
            Colors.pink,
            3,
          ),
          _buildItem(
            context,
            'HTTP',
            'Hypertext Transfer Protocol (HTTP) is the foundation of data communication on the World Wide Web. It is a protocol used for transmitting hypermedia documents, such as HTML files, over the internet. HTTP governs how web servers and web browsers communicate, allowing users to request and access web pages, images, videos, and other resources hosted on remote servers.',
            Colors.purpleAccent,
            4,
          ),
          _buildItem(
            context,
            'Domain',
            'A domain, in the context of the internet, refers to a unique name that identifies a specific area of control or authority within the Domain Name System (DNS). It serves as an easy-to-remember alias for the numeric IP address of a computer or server hosting web content or providing other internet services. Domains are typically composed of a top-level domain (TLD), such as .com, .org, or .net, and a second-level domain (SLD), which is the unique name chosen by the owner.',
            Colors.blueGrey,
            5,
          ),
          _buildItem(
            context,
            'Servers',
            'Servers are powerful computers or software systems dedicated to providing resources, services, or data to other computers, referred to as clients, within a network. They play a crucial role in facilitating communication, hosting websites, storing files, running applications, and managing network resources. Servers are designed to operate continuously and reliably, often featuring specialized hardware and software configurations optimized for specific tasks or services.',
            Colors.greenAccent,
            6,
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
          case 'WWW':
            Navigator.pushNamed(context, WWW.id);
            break;
          case 'TCP/IP':
            Navigator.pushNamed(context, TCPIP.id);
            break;
          case 'Hosting':
            Navigator.pushNamed(context, Hosting.id);
            break;
          case 'HTTP':
            Navigator.pushNamed(context, HTTP.id);
            break;
          case 'Domain':
            Navigator.pushNamed(context, Domain.id);
            break;
          case 'Servers':
            Navigator.pushNamed(context, Servers.id);
            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number,
        isFirst: title == 'WWW',
        isLast: title == 'Servers',
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
