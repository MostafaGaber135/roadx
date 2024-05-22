import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/extra_knowledge.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

// Frontend
final Uri _frontendfirst = Uri.parse(
    'https://www.coursera.org/professional-certificates/meta-front-end-developer?utm_medium=sem&utm_source=gg&utm_campaign=b2c_emea_coursera_ftcof_career-academy_arte_march_24_dr_geo-multi-set3_pmax_gads_lg-all&campaignid=21103949440&adgroupid=&device=c&keyword=&matchtype=&network=x&devicemodel=&adposition=&creativeid=&hide_mobile_promo&gad_source=1&gclid=CjwKCAjw48-vBhBbEiwAzqrZVMhdNzA1o2tHgVSzBueduWDqDGPSV2DK0ax98jvKChEbMAZbtPJe5hoCVOUQAvD_BwE');
final Uri _frontendsecond = Uri.parse(
    'https://www.zippia.com/front-end-developer-jobs/certifications/');
final Uri _frontendthird =
    Uri.parse('https://campus.w3schools.com/products/front-end-certificate');
// Backend
final Uri _backendfirst = Uri.parse(
    'https://www.udemy.com/course/fundamentals-of-backend-communications-and-protocols/?couponCode=ST7MT41824');
final Uri _backendsecond = Uri.parse(
    'https://www.udemy.com/course/nodejs-express-mongodb-bootcamp/?couponCode=ST7MT41824');
final Uri _backendthird = Uri.parse(
    'https://www.coursera.org/professional-certificates/meta-back-end-developer');

// Wordpress
final Uri _wordpressfirst =
    Uri.parse('https://cancanit.com/wordpress-certification/');
final Uri _wordpresssecond =
    Uri.parse('https://knowledge-pillars.com/shop/wp-certified-developer/');
final Uri _wordpressthird =
    Uri.parse('https://accreditly.io/certifications/wordpress-development');
final Uri _wordpressfourth = Uri.parse(
    'https://www.mygreatlearning.com/academy/learn-for-free/courses/wordpress-with-docker');

// Android
final Uri _androidfirst = Uri.parse(
    'https://www.udemy.com/course/android-kotlin-developer/?couponCode=ST15MT31224');
final Uri _androidsecond = Uri.parse(
    'udacity.com/course/android-kotlin-developer-nanodegree--nd940?irclickid=S%3Amzy9XRixyPUoByH83HA2GuUkHyvkQfAVwA1k0&irgwc=1&utm_source=affiliate&utm_medium=&aff=259799&utm_term=&utm_campaign=_gtcm_direct_&utm_content=&adid=788805#plans');
final Uri _androidthird = Uri.parse(
    'https://www.mygreatlearning.com/academy/learn-for-free/courses/android-application-development');
final Uri _androidfourth = Uri.parse(
    'https://coursera.org/professional-certificates/meta-android-developer');

// Crossplatform
final Uri _crossplatformfirst = Uri.parse(
    'https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/');
final Uri _crossplatformsecond = Uri.parse(
    'https://www.udemy.com/course/best-and-complete-flutter-course-for-beginners');
final Uri _crossplatformthird = Uri.parse(
    'https://www.simplilearn.com/free-flutter-foundation-course-skillup');
// Network
final Uri _networkfirst = Uri.parse('https://www.coursera.org/learn/tcpip');
final Uri _networksecond = Uri.parse(
    'https://www.udemy.com/course/comptia-networkplus-certification/');
final Uri _networkthird = Uri.parse(
    'https://www.udemy.com/course/cisco-ccna-icnd2-200-105-complete-course-sims-and-gns3/');

// Cyber Security
final Uri _cybersecurityfirst = Uri.parse(
    'https://www.coursera.org/professional-certificates/google-cybersecurity');
final Uri _cybersecuritysecond = Uri.parse(
    'https://www.classcentral.com/course/udemy-network-security-course-23962');
final Uri _cybersecuritythird = Uri.parse(
    'https://www.udemy.com/course/computer-networks-security-from-scratch-to-advnaced/');

// AI
final Uri _aifirst = Uri.parse('https://www.udemy.com/course/machinelearning/');
final Uri _aisecond = Uri.parse(
    'https://www.udemy.com/course/machine-learning-course-with-python/');
final Uri _aithird = Uri.parse(
    'https://www.mygreatlearning.com/academy/learn-for-free/courses/python-for-machine-learning3');

// UI UX Design

final Uri _uiuxdesignfirst = Uri.parse(
    'https://www.mygreatlearning.com/academy/learn-for-free/courses/ui-ux');
final Uri _uiuxdesignsecond = Uri.parse(
    'https://www.shiksha.com/online-courses/ux-design-fundamentals-course-courl181');
final Uri _uiuxdesignthird = Uri.parse(
    'https://www.udemy.com/course/figma-ui-ux-design-advanced-tutorial/?couponCode=KEEPLEARNING');

class Certificates extends StatefulWidget {
  const Certificates({super.key});
  static String id = 'Certificates';

  @override
  State<Certificates> createState() => _CertificatesState();
}

class _CertificatesState extends State<Certificates> {
  // Frontend
  Future<void> __frontendfirst() async {
    if (!await launchUrl(_frontendfirst)) {
      throw Exception('Could not launch $_frontendfirst');
    }
  }

  Future<void> __frontendsecond() async {
    if (!await launchUrl(_frontendsecond)) {
      throw Exception('Could not launch $_frontendsecond');
    }
  }

  Future<void> __frontendthird() async {
    if (!await launchUrl(_frontendthird)) {
      throw Exception('Could not launch $_frontendthird');
    }
  }

// Backend
  Future<void> __backendfirst() async {
    if (!await launchUrl(_backendfirst)) {
      throw Exception('Could not launch $_backendfirst');
    }
  }

  Future<void> __backendsecond() async {
    if (!await launchUrl(_backendsecond)) {
      throw Exception('Could not launch $_backendsecond');
    }
  }

  Future<void> __backendthird() async {
    if (!await launchUrl(_backendthird)) {
      throw Exception('Could not launch $_backendthird');
    }
  }

// Wordpress

  Future<void> __wordpressfirst() async {
    if (!await launchUrl(_wordpressfirst)) {
      throw Exception('Could not launch $_wordpressfirst');
    }
  }

  Future<void> __wordpresssecond() async {
    if (!await launchUrl(_wordpresssecond)) {
      throw Exception('Could not launch $_wordpresssecond');
    }
  }

  Future<void> __wordpressthird() async {
    if (!await launchUrl(_wordpressthird)) {
      throw Exception('Could not launch $_wordpressthird');
    }
  }

  Future<void> __wordpressfourth() async {
    if (!await launchUrl(_wordpressfourth)) {
      throw Exception('Could not launch $_wordpressfourth');
    }
  }

// Android

  Future<void> __androidfirst() async {
    if (!await launchUrl(_androidfirst)) {
      throw Exception('Could not launch $_androidfirst');
    }
  }

  Future<void> __androidsecond() async {
    if (!await launchUrl(_androidsecond)) {
      throw Exception('Could not launch $_androidsecond');
    }
  }

  Future<void> __androidthird() async {
    if (!await launchUrl(_androidthird)) {
      throw Exception('Could not launch $_androidthird');
    }
  }

  Future<void> __androidfourth() async {
    if (!await launchUrl(_androidfourth)) {
      throw Exception('Could not launch $_androidfourth');
    }
  }

  // Crossplatform
  Future<void> __crossplatformfirst() async {
    if (!await launchUrl(_crossplatformfirst)) {
      throw Exception('Could not launch $_crossplatformfirst');
    }
  }

  Future<void> __crossplatformsecond() async {
    if (!await launchUrl(_crossplatformsecond)) {
      throw Exception('Could not launch $_crossplatformsecond');
    }
  }

  Future<void> __crossplatformthird() async {
    if (!await launchUrl(_crossplatformthird)) {
      throw Exception('Could not launch $_crossplatformthird');
    }
  }

// network
  Future<void> __networkfirst() async {
    if (!await launchUrl(_networkfirst)) {
      throw Exception('Could not launch $_networkfirst');
    }
  }

  Future<void> __networksecond() async {
    if (!await launchUrl(_networksecond)) {
      throw Exception('Could not launch $_networksecond');
    }
  }

  Future<void> __networkthird() async {
    if (!await launchUrl(_networkthird)) {
      throw Exception('Could not launch $_networkthird');
    }
  }

// Cyber Security
  Future<void> __cybersecurityfirst() async {
    if (!await launchUrl(_cybersecurityfirst)) {
      throw Exception('Could not launch $_cybersecurityfirst');
    }
  }

  Future<void> __cybersecuritysecond() async {
    if (!await launchUrl(_cybersecuritysecond)) {
      throw Exception('Could not launch $_cybersecuritysecond');
    }
  }

  Future<void> __cybersecuritythird() async {
    if (!await launchUrl(_cybersecuritythird)) {
      throw Exception('Could not launch $_cybersecuritythird');
    }
  }

// AI
  Future<void> __aifirst() async {
    if (!await launchUrl(_aifirst)) {
      throw Exception('Could not launch $_aifirst');
    }
  }

  Future<void> __aisecond() async {
    if (!await launchUrl(_aisecond)) {
      throw Exception('Could not launch $_aisecond');
    }
  }

  Future<void> __aithird() async {
    if (!await launchUrl(_aithird)) {
      throw Exception('Could not launch $_aithird');
    }
  }

// UI UX Design
  Future<void> __uiuxdesignfirst() async {
    if (!await launchUrl(_uiuxdesignfirst)) {
      throw Exception('Could not launch $_uiuxdesignfirst');
    }
  }

  Future<void> __uiuxdesignsecond() async {
    if (!await launchUrl(_uiuxdesignsecond)) {
      throw Exception('Could not launch $_uiuxdesignsecond');
    }
  }

  Future<void> __uiuxdesignthird() async {
    if (!await launchUrl(_uiuxdesignthird)) {
      throw Exception('Could not launch $_uiuxdesignthird');
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
                MaterialPageRoute(builder: (context) =>  ExtraKnowledge()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Certificates",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            // Front
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __frontendfirst,
              img: 'assets/images/certificates/coursera.png',
              title: 'Coursera',
              subtitle: 'Frontend',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __frontendsecond,
              img: 'assets/images/certificates/zippia.png',
              title: 'Zippia',
              subtitle: 'Frontend',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __frontendthird,
              img: 'assets/images/certificates/w3resource.png',
              title: 'W3resource',
              subtitle: 'Frontend',
            ),
            // Backend
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __backendfirst,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'backend',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __backendsecond,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'backend',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __backendthird,
              img: 'assets/images/certificates/coursera.png',
              title: 'Coursera',
              subtitle: 'backend',
            ),

            // Wordpress
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressfirst,
              img: 'assets/images/certificates/cancanit.png',
              title: 'Cancanit',
              subtitle: 'Wordpress',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpresssecond,
              img: 'assets/images/certificates/knowledge-pillars.png',
              title: 'Knowledge-Pillars.',
              subtitle: 'Wordpress',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressthird,
              img: 'assets/images/certificates/accreditly.png',
              title: 'Accreditly',
              subtitle: 'Wordpress',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __wordpressfourth,
              img: 'assets/images/certificates/svgexport-1.png',
              title: 'Great Learning',
              subtitle: 'Wordpress',
            ),
            // Android
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __androidfirst,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'Android Application',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __androidsecond,
              img: 'assets/images/certificates/download.png',
              title: 'Udacity',
              subtitle: 'Android Application',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __androidthird,
              img: 'assets/images/certificates/svgexport-1.png',
              title: 'Great Learning',
              subtitle: 'Android Application',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __androidfourth,
              img: 'assets/images/certificates/coursera.png',
              title: 'Coursera',
              subtitle: 'Android Application',
            ),
            // Crossplatform
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __crossplatformfirst,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'CrossPlatform',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __crossplatformsecond,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'CrossPlatform',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __crossplatformthird,
              img: 'assets/images/certificates/Simplilearn - Skillup.png',
              title: 'simplilearn',
              subtitle: 'CrossPlatform',
            ),
            // Network
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkfirst,
              img: 'assets/images/certificates/coursera.png',
              title: 'Coursera',
              subtitle: 'Network',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networksecond,
              img: 'assets/images/certificates/svgexport-3.png',
              title: 'class Central',
              subtitle: 'Network',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __networkthird,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'Network',
            ),
            // Cyber Security
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cybersecurityfirst,
              img: 'assets/images/certificates/coursera.png',
              title: 'Coursera',
              subtitle: 'Cyber Security',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cybersecuritysecond,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'Cyber Security',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __cybersecuritythird,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'Cyber Security',
            ),
            // AI
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __aifirst,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'Artificial Intelligence',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __aisecond,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'Artificial Intelligence',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __aithird,
              img: 'assets/images/certificates/svgexport-1.png',
              title: 'Great Learning',
              subtitle: 'Artificial Intelligence',
            ),
            // UI UX Design
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __uiuxdesignfirst,
              img: 'assets/images/certificates/svgexport-1.png',
              title: 'Great Learning',
              subtitle: 'UI UX Design',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __uiuxdesignsecond,
              img: 'assets/images/certificates/SO_LOGO_126_46.png',
              title: 'Shiksha',
              subtitle: 'UI UX Design',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __uiuxdesignthird,
              img: 'assets/images/certificates/Udemy_Android.png',
              title: 'Udemy',
              subtitle: 'UI UX Design',
            ),
          ],
        ),
      ),
    );
  }
}
