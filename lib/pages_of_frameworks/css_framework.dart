import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages_of_extra_knowledge/frameworks.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';
// Bootstrap
final Uri _bootstrapfirst = Uri.parse(
    'https://www.youtube.com/watch?v=-qfEOE4vtxE');
final Uri _bootstrapsecond = Uri.parse(
    'https://youtube.com/playlist?list=PL4cUxeGkcC9joIM91nLzd_qaH_AimmdAR&si=rcbFWOEJJb4F5bjK');
final Uri _bootstrapthird = Uri.parse(
    'https://youtube.com/playlist?list=PLDoPjvoNmBAw24EjNUp_88S1VeaNK8Cts&si=J2Uix0ASL07a8hX4');
    final Uri _bootstrapfourth = Uri.parse(
    'https://youtube.com/playlist?list=PLknwEmKsW8OscL9GvjxwL7RYbcwwdIitk&si=o5Hq2Tkq3Gf8wqjS');

    // Tailwind CSS
    final Uri _tailwindcssfirst = Uri.parse(
    'https://www.youtube.com/watch?v=ft30zcMlFao');
final Uri _tailwindcsssecond = Uri.parse(
    'https://youtube.com/playlist?list=PL4cUxeGkcC9gpXORlEHjc5bgnIi5HEGhw&si=rKG4U0qjiUVRMS49');
final Uri _tailwindcssthird = Uri.parse(
    'https://youtube.com/playlist?list=PLxbVBWjVdAEjmn2KbE1886vVkPv1Iu67J&si=kAgCOBJN6Gzz6DcU');
    
    // Foundation
     final Uri _foundationfirst = Uri.parse(
    'https://youtube.com/playlist?list=PL6gx4Cwl9DGD3PLy3DZHr6-LpCY7irPU8&si=bkCotj8vV1cSORwe');
final Uri _foundationsecond = Uri.parse(
    'https://www.youtube.com/watch?v=DEu5xYEZx18');
    
class CSSFramework extends StatefulWidget {
  const CSSFramework({super.key});
  static String id = 'CSSFramework';

  @override
  State<CSSFramework> createState() => _CSSFrameworkState();
}

class _CSSFrameworkState extends State<CSSFramework> {
  // Bootstrap
  Future<void> __bootstrapfirst() async {
    if (!await launchUrl(_bootstrapfirst)) {
      throw Exception('Could not launch $_bootstrapfirst');
    }
  }

  Future<void> __bootstrapsecond() async {
    if (!await launchUrl(_bootstrapsecond)) {
      throw Exception('Could not launch $_bootstrapsecond');
    }
  }

  Future<void> __bootstrapthird() async {
    if (!await launchUrl(_bootstrapthird)) {
      throw Exception('Could not launch $_bootstrapthird');
    }
  }
  Future<void> __bootstrapfourth() async {
    if (!await launchUrl(_bootstrapfourth)) {
      throw Exception('Could not launch $_bootstrapfourth');
    }
  }
  // Tailwind CSS
  Future<void> __tailwindcssfirst() async {
    if (!await launchUrl(_tailwindcssfirst)) {
      throw Exception('Could not launch $_tailwindcssfirst');
    }
  }

  Future<void> __tailwindcsssecond() async {
    if (!await launchUrl(_tailwindcsssecond)) {
      throw Exception('Could not launch $_tailwindcsssecond');
    }
  }

  Future<void> __tailwindcssthird() async {
    if (!await launchUrl(_tailwindcssthird)) {
      throw Exception('Could not launch $_tailwindcssthird');
    }
  }
  // Foundation
  Future<void> __foundationfirst() async {
    if (!await launchUrl(_foundationfirst)) {
      throw Exception('Could not launch $_foundationfirst');
    }
  }

  Future<void> __foundationsecond() async {
    if (!await launchUrl(_foundationsecond)) {
      throw Exception('Could not launch $_foundationsecond');
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
          "CSS Framework",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            // Bootstrap
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __bootstrapfirst,
              img: 'assets/images/frameworks/bootstrap link 1.png',
              title: 'freeCodeCamp',
              subtitle: 'Single Video - For Bootstrap - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __bootstrapsecond,
              img: 'assets/images/frameworks/bootstrap link 2.png',
              title: 'Net Ninja',
              subtitle: 'For Bootstrap - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __bootstrapthird,
              img: 'assets/images/frameworks/bootstrap link 3.png',
              title: 'Elzero Web School',
              subtitle: 'For Bootstrap - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __bootstrapfourth,
              img: 'assets/images/frameworks/bootstrap link 4.png',
              title: 'Abdelrahman Gamal',
              subtitle: 'For Bootstrap - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            // Tailwind CSS
            CustomListTile(
              onTap: __tailwindcssfirst,
              img: 'assets/images/frameworks/bootstrap link 1.png',
              title: 'freeCodeCamp',
              subtitle: 'Single Video - For Tailwind CSS - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __tailwindcsssecond,
              img: 'assets/images/frameworks/tailwind link 2.png',
              title: 'Net Ninja',
              subtitle: 'For Tailwind CSS - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __tailwindcssthird,
              img: 'assets/images/frameworks/tailwind link 3.png',
              title: 'كورسات في البرمجة - Korsat X Parmaga',
              subtitle: 'For Tailwind CSS - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            // Foundation
            CustomListTile(
              onTap: __foundationsecond,
              img: 'assets/images/frameworks/foundation link 2.png',
              title: 'Traversy Media',
              subtitle: 'Single Video - For Foundation - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __foundationfirst,
              img: 'assets/images/frameworks/foundation link 1.png',
              title: 'thenewboston',
              subtitle: 'For Foundation - English',
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


