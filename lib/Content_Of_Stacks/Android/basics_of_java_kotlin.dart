import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/android.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _javaAndroidfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PL_c9BZzLwBRJLm0QETVj_XcN4jRsV4LkR');
final Uri _javaAndroidsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLlxmoA0rQ-LzrFmbcHy2vUYIr9ZRo83yv');
final Uri _javaAndroidthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLUhfM8afLE_Ok-0Lx2v9hfrmbxi3GgsX1');
final Uri _javaAndroidfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLF8OvnCBlEY3e0Yg990aAXreEru72_xWN');
final Uri _javaAndroidfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLnzqK5HvcpwR8Y_aYk3mS3vPv52c0LC5K');
final Uri _javaAndroidsixth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLMYF6NkLrdN8giOLjGRx81fjEIaE5ef-8');
final Uri _javaAndroidseventh = Uri.parse(
    'https://youtube.com/playlist?list=PLBB9C1D92F09272E6&si=mPN7u-5qEgWectgW');

final Uri _kotlinAndroidfirst =
    Uri.parse('https://www.youtube.com/watch?v=F9UC9DY-vIU');
final Uri _kotlinAndroidsecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PLlxmoA0rQ-LwgK1JsnMsakYNACYGa1cjR');
final Uri _kotlinAndroidthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLrnPJCHvNZuAIbejjZA1kGfLeA8ZpICB2');
final Uri _kotlinAndroidfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLF8OvnCBlEY2w-zdVPozupapiKzLzpyUZ');
final Uri _kotlinAndroidfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PLzdS08UB3I_brCulwqptxJ17mAwRI1v1y');

class LearnBasicsOfJavaKotlin extends StatefulWidget {
  const LearnBasicsOfJavaKotlin({super.key});
  static String id = 'Basics Of Java And Kotlin';

  @override
  State<LearnBasicsOfJavaKotlin> createState() => _LearnBasicsOfJavaKotlinState();
}

class _LearnBasicsOfJavaKotlinState extends State<LearnBasicsOfJavaKotlin> {
  Future<void> __javaAndroidfirst() async {
    if (!await launchUrl(_javaAndroidfirst)) {
      throw Exception('Could not launch $_javaAndroidfirst');
    }
  }

  Future<void> __javaAndroidsecond() async {
    if (!await launchUrl(_javaAndroidsecond)) {
      throw Exception('Could not launch $_javaAndroidsecond');
    }
  }

  Future<void> __javaAndroidthird() async {
    if (!await launchUrl(_javaAndroidthird)) {
      throw Exception('Could not launch $_javaAndroidthird');
    }
  }

  Future<void> __javaAndroidfourth() async {
    if (!await launchUrl(_javaAndroidfourth)) {
      throw Exception('Could not launch $_javaAndroidfourth');
    }
  }

  Future<void> __javaAndroidfifth() async {
    if (!await launchUrl(_javaAndroidfifth)) {
      throw Exception('Could not launch $_javaAndroidfifth');
    }
  }

  Future<void> __javaAndroidsixth() async {
    if (!await launchUrl(_javaAndroidsixth)) {
      throw Exception('Could not launch $_javaAndroidsixth');
    }
  }

  Future<void> __javaAndroidseventh() async {
    if (!await launchUrl(_javaAndroidseventh)) {
      throw Exception('Could not launch $_javaAndroidseventh');
    }
  }

  Future<void> __kotlinAndroidfirst() async {
    if (!await launchUrl(_kotlinAndroidfirst)) {
      throw Exception('Could not launch $_kotlinAndroidfirst');
    }
  }

  Future<void> __kotlinAndroidsecond() async {
    if (!await launchUrl(_kotlinAndroidsecond)) {
      throw Exception('Could not launch $_kotlinAndroidsecond');
    }
  }

  Future<void> __kotlinAndroidthird() async {
    if (!await launchUrl(_kotlinAndroidthird)) {
      throw Exception('Could not launch $_kotlinAndroidthird');
    }
  }

  Future<void> __kotlinAndroidfourth() async {
    if (!await launchUrl(_kotlinAndroidfourth)) {
      throw Exception('Could not launch $_kotlinAndroidfourth');
    }
  }

  Future<void> __kotlinAndroidfifth() async {
    if (!await launchUrl(_kotlinAndroidfifth)) {
      throw Exception('Could not launch $_kotlinAndroidfifth');
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
                MaterialPageRoute(builder: (context) => const AndroidApplication()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Learn Basics Of Java or Kotlin",
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
              onTap: __javaAndroidfirst,
              img: 'assets/images/content_of_stacks/javaplaylist1.jpg',
              title: 'Caleb Curry',
              subtitle: 'For Java - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javaAndroidsecond,
              img: 'assets/images/content_of_stacks/javaplaylist2.jpg',
              title: 'Smartherd',
              subtitle: 'For Java - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javaAndroidthird,
              img: 'assets/images/content_of_stacks/javaplaylist3.jpg',
              title: 'Neat Roots',
              subtitle: 'For Java - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javaAndroidfourth,
              img: 'assets/images/content_of_stacks/javaplaylist4.jpg',
              title: 'TheNewBaghdad',
              subtitle: 'For Java - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javaAndroidfifth,
              img: 'assets/images/content_of_stacks/javaplaylist5.jpg',
              title: 'محمد شوشان',
              subtitle: 'For Java - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javaAndroidsixth,
              img: 'assets/images/content_of_stacks/javaplaylist6.jpg',
              title: 'Learn with Muhammed Essa',
              subtitle: 'For Java - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __javaAndroidseventh,
              img: 'assets/images/content_of_stacks/javaplaylist7.jpg',
              title: 'Adel sabour',
              subtitle: 'For Java - Arabic',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __kotlinAndroidfirst,
              img: 'assets/images/content_of_stacks/Kotlinsinglevideo.jpg',
              title: 'freeCodeCamp.org',
              subtitle: 'For kotlin - single video - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __kotlinAndroidsecond,
              img: 'assets/images/content_of_stacks/Kotlin_playlist2.jpg',
              title: 'Smartherd',
              subtitle: 'For kotlin - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __kotlinAndroidthird,
              img: 'assets/images/content_of_stacks/Kotlin_playlist3.jpg',
              title: 'Coding in Flow',
              subtitle: 'For kotlin - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __kotlinAndroidfourth,
              img: 'assets/images/content_of_stacks/Kotlin_playlist4.jpg',
              title: 'TheNewBaghdad',
              subtitle: 'For kotlin - English',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomListTile(
              onTap: __kotlinAndroidfifth,
              img: 'assets/images/content_of_stacks/Kotlin_playlist5.jpg',
              title: 'م. علي جمال - Arab Coding',
              subtitle: 'For kotlin - Arabic',
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
