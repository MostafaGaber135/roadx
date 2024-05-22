import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/artificialintelligence.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _fundamentalsofmachinelearninganddeeplearningfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLcWfeUsAys2k_xub3mHks85sBHZvg24Jd');
final Uri _fundamentalsofmachinelearninganddeeplearningsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PL9J0c3ttbHD7SMKv-V4-Y4ePSi6d7bKYZ');
final Uri _fundamentalsofmachinelearninganddeeplearningthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLUQ5y3YcMclF5MiI_kP0-twCyN620UCk-');
final Uri _fundamentalsofmachinelearninganddeeplearningfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLtsZ69x5q-X9j44MdSX-NGuOhGXOY0aqH');
final Uri _fundamentalsofmachinelearninganddeeplearningfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLH0em1f_fBoSDolEWyI9XXH9CB_LhjCGL');
final Uri _fundamentalsofmachinelearninganddeeplearningsixth = Uri.parse(
    'https://www.youtube.com/playlist?list=PL6-3IRz2XF5Ua2KG_Fl3lbZ-kKi3-Np0_');

class FundamentalsOfMachineLearningAndDeepLearning extends StatefulWidget {
  const FundamentalsOfMachineLearningAndDeepLearning({super.key});
  static String id = 'Fundamentals Of Machine Learning And Deep Learning';

  @override
  State<FundamentalsOfMachineLearningAndDeepLearning> createState() =>
      _FundamentalsOfMachineLearningAndDeepLearningState();
}

class _FundamentalsOfMachineLearningAndDeepLearningState
    extends State<FundamentalsOfMachineLearningAndDeepLearning> {
  Future<void> __fundamentalsofmachinelearninganddeeplearningfirst() async {
    if (!await launchUrl(_fundamentalsofmachinelearninganddeeplearningfirst)) {
      throw Exception(
          'Could not launch $_fundamentalsofmachinelearninganddeeplearningfirst');
    }
  }

  Future<void> __fundamentalsofmachinelearninganddeeplearningsecond() async {
    if (!await launchUrl(_fundamentalsofmachinelearninganddeeplearningsecond)) {
      throw Exception(
          'Could not launch $_fundamentalsofmachinelearninganddeeplearningsecond');
    }
  }

  Future<void> __fundamentalsofmachinelearninganddeeplearningthird() async {
    if (!await launchUrl(_fundamentalsofmachinelearninganddeeplearningthird)) {
      throw Exception(
          'Could not launch $_fundamentalsofmachinelearninganddeeplearningthird');
    }
  }

  Future<void> __fundamentalsofmachinelearninganddeeplearningfourth() async {
    if (!await launchUrl(_fundamentalsofmachinelearninganddeeplearningfourth)) {
      throw Exception(
          'Could not launch $_fundamentalsofmachinelearninganddeeplearningfourth');
    }
  }

  Future<void> __fundamentalsofmachinelearninganddeeplearningfifth() async {
    if (!await launchUrl(_fundamentalsofmachinelearninganddeeplearningfifth)) {
      throw Exception(
          'Could not launch $_fundamentalsofmachinelearninganddeeplearningfifth');
    }
  }

  Future<void> __fundamentalsofmachinelearninganddeeplearningsixth() async {
    if (!await launchUrl(_fundamentalsofmachinelearninganddeeplearningsixth)) {
      throw Exception(
          'Could not launch $_fundamentalsofmachinelearninganddeeplearningsixth');
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
          "Fundamentals Of Machine Learning And Deep Learning",
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
              onTap: __fundamentalsofmachinelearninganddeeplearningfirst,
              img:
                  'assets/images/content_of_stacks/fundamentalsofmachinelearninganddeeplearning link 1.png',
              title: 'AssemblyAI',
              subtitle: 'English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofmachinelearninganddeeplearningsecond,
              img:
                  'assets/images/content_of_stacks/fundamentalsofmachinelearninganddeeplearning link 2.png',
              title: 'Alaa & Yehya Academy أكاديمية آلاء و يحيى',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofmachinelearninganddeeplearningthird,
              img:
                  'assets/images/content_of_stacks/fundamentalsofmachinelearninganddeeplearning link 3.png',
              title: 'منصة أكاديما للذكاء الأصنطاعي وعلوم الحاسب',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofmachinelearninganddeeplearningfourth,
              img:
                  'assets/images/content_of_stacks/fundamentalsofmachinelearninganddeeplearning link 4.png',
              title: 'Elgohary AI',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofmachinelearninganddeeplearningfifth,
              img:
                  'assets/images/content_of_stacks/fundamentalsofmachinelearninganddeeplearning link 5.png',
              title: 'cyber school',
              subtitle: 'Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __fundamentalsofmachinelearninganddeeplearningsixth,
              img:
                  'assets/images/content_of_stacks/fundamentalsofmachinelearninganddeeplearning link 6.png',
              title: 'Hesham Asem',
              subtitle: 'Arabic',
            ),
          ],
        ),
      ),
    );
  }
}
