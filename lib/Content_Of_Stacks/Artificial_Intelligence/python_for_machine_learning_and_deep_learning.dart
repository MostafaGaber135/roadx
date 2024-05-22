import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/artificialintelligence.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _pythonformachinelearninganddeeplearningfirst =
    Uri.parse('https://www.youtube.com/watch?v=c8W7dRPdIPE');
final Uri _pythonformachinelearninganddeeplearningsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLQVvvaa0QuDfKTOs3Keq_kaG2P55YRn5v');

class PythonForMachineLearningAndDeepLearning extends StatefulWidget {
  const PythonForMachineLearningAndDeepLearning({super.key});
  static String id = 'Python For Machine Learning And Deep Learning';

  @override
  State<PythonForMachineLearningAndDeepLearning> createState() =>
      _PythonForMachineLearningAndDeepLearningState();
}

class _PythonForMachineLearningAndDeepLearningState
    extends State<PythonForMachineLearningAndDeepLearning> {
  Future<void> __pythonformachinelearninganddeeplearningfirst() async {
    if (!await launchUrl(_pythonformachinelearninganddeeplearningfirst)) {
      throw Exception(
          'Could not launch $_pythonformachinelearninganddeeplearningfirst');
    }
  }

  Future<void> __pythonformachinelearninganddeeplearningsecond() async {
    if (!await launchUrl(_pythonformachinelearninganddeeplearningsecond)) {
      throw Exception(
          'Could not launch $_pythonformachinelearninganddeeplearningsecond');
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
                MaterialPageRoute(builder: (context) => const ArtificialIntelligence()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Python For Machine Learning And Deep Learning",
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
              onTap: __pythonformachinelearninganddeeplearningfirst,
              img:
                  'assets/images/content_of_stacks/machinelearningwithpythonsinglevide.jpg',
              title: 'Simplilearn',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __pythonformachinelearninganddeeplearningsecond,
              img:
                  'assets/images/content_of_stacks/machinelearningwithpython.png',
              title: 'sentdex',
              subtitle: 'English',
            ),
          ],
        ),
      ),
    );
  }
}
