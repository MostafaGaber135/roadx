import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/resources/cross_platform.dart';
import 'package:roadx/widgets/custom_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _stateManagementFlutterfirst = Uri.parse(
    'https://www.youtube.com/playlist?list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t');
final Uri _stateManagementFluttersecond = Uri.parse(
    'https://www.youtube.com/playlist?list=PL6yRaaP0WPkUf-ff1OX99DVSL1cynLHxO');
final Uri _stateManagementFlutterthird = Uri.parse(
    'https://www.youtube.com/playlist?list=PLFyjjoCMAPtwnyq0HTRIadv-yxRuhKSYX');
final Uri _stateManagementFlutterfourth = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJIviJiC76oO5aV8bDp2s3OrA');

final Uri _stateManagementFlutterfifth = Uri.parse(
    'https://www.youtube.com/playlist?list=PL93xoMrxRJIvZHL420f63bWIOrcoM6NU-');
final Uri _stateManagementFluttersixth = Uri.parse(
    'https://www.youtube.com/playlist?list=PL3aG1K3LWCrfRhN2p7gargu-ugZuCO44a');

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});
  static String id = 'State Management';

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  Future<void> __flutterDartfirst() async {
    if (!await launchUrl(_stateManagementFlutterfirst)) {
      throw Exception('Could not launch $_stateManagementFlutterfirst');
    }
  }

  Future<void> __stateManagementFluttersecond() async {
    if (!await launchUrl(_stateManagementFluttersecond)) {
      throw Exception('Could not launch $_stateManagementFluttersecond');
    }
  }

  Future<void> __stateManagementFlutterthird() async {
    if (!await launchUrl(_stateManagementFlutterthird)) {
      throw Exception('Could not launch $_stateManagementFlutterthird');
    }
  }

  Future<void> __stateManagementFlutterfouth() async {
    if (!await launchUrl(_stateManagementFlutterfourth)) {
      throw Exception('Could not launch $_stateManagementFlutterfourth');
    }
  }

  Future<void> __stateManagementFlutterfifth() async {
    if (!await launchUrl(_stateManagementFlutterfifth)) {
      throw Exception('Could not launch $_stateManagementFlutterfifth');
    }
  }

  Future<void> __stateManagementFluttersixth() async {
    if (!await launchUrl(_stateManagementFluttersixth)) {
      throw Exception('Could not launch $_stateManagementFluttersixth');
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
                MaterialPageRoute(builder: (context) => const CrossPlatform()),
              );
            },

            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "State Management",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __flutterDartfirst,
              title: 'Ripples Code',
              subtitle: 'GetX - English',
              img:
                  'assets/images/content_of_stacks/state_management_playlist1.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __stateManagementFluttersecond,
              title: 'Vandad Nahavandipoor',
              subtitle: 'English',
              img:
                  'assets/images/content_of_stacks/state_management_playlist2.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __stateManagementFlutterthird,
              title: 'The Tech Brothers',
              subtitle: 'English',
              img:
                  'assets/images/content_of_stacks/state_management_playlist3.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __stateManagementFlutterfouth,
              title: 'Wael abo hamza',
              subtitle: 'Provider - Arabic',
              img:
                  'assets/images/content_of_stacks/state_management_playlist4.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __stateManagementFlutterfifth,
              title: 'Wael abo hamza',
              subtitle: 'GetX - Arabic',
              img:
                  'assets/images/content_of_stacks/state_management_playlist5.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              onTap: __stateManagementFluttersixth,
              title: 'Code2Start - Mohamed Fathy Taha',
              subtitle: 'Arabic',
              img:
                  'assets/images/content_of_stacks/state_management_playlist6.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
