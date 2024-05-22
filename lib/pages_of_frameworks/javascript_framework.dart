import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/frameworks.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

// View.js
final Uri _viewjsfirst = Uri.parse(
    'https://youtube.com/playlist?list=PL4cUxeGkcC9hYYGbV60Vq3IXYNfDk8At1&si=CPRtru_pwsOxtMxQ');
final Uri _viewjssecond = Uri.parse(
    'https://youtube.com/playlist?list=PLC3y8-rFHvwgeQIfSDtEGVvvSEPDkL_1f&si=JIxEEIwYdHP__uTo');
final Uri _viewjsthird = Uri.parse(
    'https://youtube.com/playlist?list=PLDoPjvoNmBAxr5AqK3Yz4DWYKVSmIFziw&si=w410ueQuhqjTKIyC');
final Uri _viewjsfourth = Uri.parse(
    'https://youtube.com/playlist?list=PLyr3gkJ8OBxrt_HVPIxk9VBPoe6Kth19r&si=7PlH5S8UnbnvehjA');

// Angular.js
final Uri _angularfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PL4cUxeGkcC9gsJS5QgFT2IvWIX78dV3_v');
final Uri _angularsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLC3y8-rFHvwhBRAgFinJR8KHIrCdTkZcZ');
final Uri _angularthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLwSrRLfx1DYJgrYJEQocAee-KDDd-cs7L');

// React.js
final Uri _reactfirst = Uri.parse(
    'https://youtube.com/playlist?list=PLpPqplz6dKxW5ZfERUPoYTtNUNvrEebAR&si=ox7GV-DrvSNS4ibj');
final Uri _reactsecond = Uri.parse(
    'https://youtube.com/playlist?list=PLC3y8-rFHvwgg3vaYJgHGnModB54rxOk3&si=CQ7BpL8GRTx71q3J');
final Uri _reactthird = Uri.parse(
    'https://youtube.com/playlist?list=PL4cUxeGkcC9gZD-Tvwfod2gaISzfRiP9d&si=zp9zYyjsLDGsXTx4');

class JavascriptFramework extends StatefulWidget {
  const JavascriptFramework({super.key});
  static String id = 'JavascriptFramework';

  @override
  State<JavascriptFramework> createState() => _JavascriptFrameworkState();
}

class _JavascriptFrameworkState extends State<JavascriptFramework> {
  // View.js
  Future<void> __viewjsfirst() async {
    if (!await launchUrl(_viewjsfirst)) {
      throw Exception('Could not launch $_viewjsfirst');
    }
  }

  Future<void> __viewjssecond() async {
    if (!await launchUrl(_viewjssecond)) {
      throw Exception('Could not launch $_viewjssecond');
    }
  }

  Future<void> __viewjsthird() async {
    if (!await launchUrl(_viewjsthird)) {
      throw Exception('Could not launch $_viewjsthird');
    }
  }

  Future<void> __viewjsfourth() async {
    if (!await launchUrl(_viewjsfourth)) {
      throw Exception('Could not launch $_viewjsfourth');
    }
  }

  // Angular.js
  Future<void> __angularfirst() async {
    if (!await launchUrl(_angularfirst)) {
      throw Exception('Could not launch $_angularfirst');
    }
  }

  Future<void> __angularsecond() async {
    if (!await launchUrl(_angularsecond)) {
      throw Exception('Could not launch $_angularsecond');
    }
  }

  Future<void> __angularthird() async {
    if (!await launchUrl(_angularthird)) {
      throw Exception('Could not launch $_angularthird');
    }
  }

  // React.js
  Future<void> __reactfirst() async {
    if (!await launchUrl(_reactfirst)) {
      throw Exception('Could not launch $_reactfirst');
    }
  }

  Future<void> __reactsecond() async {
    if (!await launchUrl(_reactsecond)) {
      throw Exception('Could not launch $_reactsecond');
    }
  }

  Future<void> __reactthird() async {
    if (!await launchUrl(_reactthird)) {
      throw Exception('Could not launch $_reactthird');
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
                MaterialPageRoute(builder: (context) => const Frameworks()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Javascript Framework",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            // View.js
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __viewjsfirst,
              img: 'assets/images/frameworks/viewjs link 1.png',
              title: 'Net Ninja',
              subtitle: 'For View.js - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __viewjssecond,
              img: 'assets/images/frameworks/viewjs link 2.png',
              title: 'Codevolution',
              subtitle: 'For View.js - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __viewjsthird,
              img: 'assets/images/frameworks/viewjs link 3.png',
              title: 'Elzero Web School',
              subtitle: 'For View.js - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __viewjsfourth,
              img: 'assets/images/frameworks/viewjs link 4.png',
              title: 'VivaCode',
              subtitle: 'For View.js - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            // Angular.js
            CustomListTile(
              onTap: __angularfirst,
              img: 'assets/images/frameworks/angular link 1.png',
              title: 'Net Ninja',
              subtitle: 'For Angular.js - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __angularsecond,
              img: 'assets/images/frameworks/angular link 2.png',
              title: 'Codevolution',
              subtitle: 'For Angular.js - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __angularthird,
              img: 'assets/images/frameworks/angular link 3.png',
              title: 'Yolio',
              subtitle: 'For Angular.js - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            // React.js
            CustomListTile(
              onTap: __reactfirst,
              img: 'assets/images/frameworks/react link 1.png',
              title: 'PedroTech',
              subtitle: 'For React.js - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __reactsecond,
              img: 'assets/images/frameworks/react link 2.png',
              title: 'Codevolution',
              subtitle: 'For React.js - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __reactthird,
              img: 'assets/images/frameworks/react link 3.png',
              title: 'Net Ninja',
              subtitle: 'For React.js - English',
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
