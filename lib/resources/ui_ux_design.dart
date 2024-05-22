import 'package:flutter/material.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/basics_of_ui_design.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/choose_the_tool.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/difference_between_ui_ux.dart';
import 'package:roadx/Content_Of_Stacks/UI_UX_Design/understand_the_platform_guidelines.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/pages/categories.dart';
import 'package:roadx/widgets/custom_timeline_tile.dart';

class UIUXDesign extends StatelessWidget {
  const UIUXDesign({super.key});

  static String id = 'UIUXDesign';

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
          "UI / UX Design",
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
            'Difference Between UI & UX',
            'UI (User Interface) and UX (User Experience) are two closely related but distinct concepts in the field of design, particularly in the realm of digital products like websites and mobile apps.',
            Colors.indigo,
            1, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Choose the tool you start with Adobe XD / Figma Tool',
            'Choosing between Adobe XD and Figma depends on your specific needs and preferences. Adobe XD offers seamless integration with other Adobe Creative Cloud apps, making it a preferred choice for designers already using Adobe software.',
            Colors.blueAccent,
            2, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Understand the platform guidelines that design makes',
            'Understanding platform guidelines is crucial for designers as they ensure that their designs adhere to the standards and conventions of the platform on which they\'re designing.',
            Colors.pink,
            3, // Added number for the timeline
          ),
          _buildItem(
            context,
            'Basics of UI Design',
            'UI (User Interface) design focuses on creating visually appealing and intuitive interfaces for digital products such as websites, mobile apps, and software applications.',
            Colors.purpleAccent,
            4, // Added number for the timeline
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
          case 'Difference Between UI & UX':
            Navigator.pushNamed(context, DifferenceBetweenUIUX.id);
            break;
          case 'Choose the tool you start with Adobe XD / Figma Tool':
            Navigator.pushNamed(context, ChooseTheTool.id);
            break;
          case 'Understand the platform guidelines that design makes':
            Navigator.pushNamed(context, UnderstandThePlatformGuidelines.id);
            break;
          case 'Basics of UI Design':
            Navigator.pushNamed(context, BasicsOfUIDesign.id);
            break;
          default:
            break;
        }
      },
      child: CustomTimeLineTile(
        number: number,
        isFirst: title == 'Difference Between UI & UX',
        isLast: title == 'Basics of UI Design',
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
