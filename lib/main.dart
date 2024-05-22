import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:roadx/content_of_stacks/Android/basics_of_java_kotlin.dart';
import 'package:roadx/content_of_stacks/Android/data_storage.dart';
import 'package:roadx/content_of_stacks/Android/firebase_integration.dart';
import 'package:roadx/content_of_stacks/Android/fundamentals_of_android_development.dart';
import 'package:roadx/content_of_stacks/Android/networking_and_api.dart';
import 'package:roadx/content_of_stacks/Artificial_Intelligence/fundamentals_of_machine_learning_and_deep_learning.dart';
import 'package:roadx/content_of_stacks/Artificial_Intelligence/learn_mathematics.dart';
import 'package:roadx/content_of_stacks/Artificial_Intelligence/python_for_machine_learning_and_deep_learning.dart';
import 'package:roadx/content_of_stacks/Back_End/csharp.dart';
import 'package:roadx/content_of_stacks/Back_End/django.dart';
import 'package:roadx/content_of_stacks/Back_End/dotnet.dart';
import 'package:roadx/content_of_stacks/Back_End/dotnet_backend_developer.dart';
import 'package:roadx/content_of_stacks/Back_End/express.dart';
import 'package:roadx/content_of_stacks/Back_End/flask.dart';
import 'package:roadx/content_of_stacks/Back_End/flask_backend_developer.dart';
import 'package:roadx/content_of_stacks/Back_End/laravel.dart';
import 'package:roadx/content_of_stacks/Back_End/laravel_backend_developer.dart';
import 'package:roadx/content_of_stacks/Back_End/mern_backend_developer.dart';
import 'package:roadx/content_of_stacks/Back_End/mongodb.dart';
import 'package:roadx/content_of_stacks/Back_End/mysql.dart';
import 'package:roadx/content_of_stacks/Back_End/nodejs.dart';
import 'package:roadx/content_of_stacks/Back_End/php.dart';
import 'package:roadx/content_of_stacks/Back_End/python.dart';
import 'package:roadx/content_of_stacks/Back_End/sql.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/dart.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/flutter_with_firebase.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/fundamentals_of_flutter.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/rest_api.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/sqflite.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/sql.dart';
import 'package:roadx/content_of_stacks/Cross_Platform/state_management.dart';
import 'package:roadx/content_of_stacks/Cyber_Security/ccna_security.dart';
import 'package:roadx/content_of_stacks/Cyber_Security/firewalls.dart';
import 'package:roadx/content_of_stacks/Cyber_Security/learn_the_basics_of_networking.dart';
import 'package:roadx/content_of_stacks/Cyber_Security/studying_linux.dart';
import 'package:roadx/content_of_stacks/Front_End/css.dart';
import 'package:roadx/content_of_stacks/Front_End/html.dart';
import 'package:roadx/content_of_stacks/Front_End/javascript.dart';
import 'package:roadx/content_of_stacks/Network/fundamentals_of_network.dart';
import 'package:roadx/content_of_stacks/Network/network_protocols_and_ccna_fundamentals.dart';
import 'package:roadx/content_of_stacks/Network/windows_server_certification_validates_skills.dart';
import 'package:roadx/content_of_stacks/UI_UX_Design/basics_of_ui_design.dart';
import 'package:roadx/content_of_stacks/UI_UX_Design/choose_the_tool.dart';
import 'package:roadx/content_of_stacks/UI_UX_Design/difference_between_ui_ux.dart';
import 'package:roadx/content_of_stacks/UI_UX_Design/understand_the_platform_guidelines.dart';
import 'package:roadx/content_of_stacks/Wordpress/flywheel.dart';
import 'package:roadx/content_of_stacks/Wordpress/docker.dart';
import 'package:roadx/Content_Of_Stacks/Wordpress/introduction_to_wordPress.dart';
import 'package:roadx/content_of_stacks/Wordpress/mamp.dart';
import 'package:roadx/content_of_stacks/Wordpress/xampp.dart';
import 'package:roadx/drawer/about.dart';
import 'package:roadx/drawer/faq.dart';
import 'package:roadx/drawer/privacypolicy.dart';
import 'package:roadx/drawer/settings.dart';
import 'package:roadx/drawer/termsofuse.dart';
import 'package:roadx/pages/Quizzes.dart';
import 'package:roadx/pages/categories.dart';
import 'package:roadx/pages/chatbot.dart';
import 'package:roadx/pages/documentation.dart';
import 'package:roadx/pages/extra_knowledge.dart';
import 'package:roadx/pages/homepage.dart';
import 'package:roadx/pages/learning_kids.dart';
import 'package:roadx/pages/programming_language.dart';
import 'package:roadx/pages_of_extra_knowledge/frameworks.dart';
import 'package:roadx/pages_of_extra_knowledge/important_skills.dart';
import 'package:roadx/pages_of_extra_knowledge/knowledge.dart';
import 'package:roadx/pages_of_extra_knowledge/templates.dart';
import 'package:roadx/pages_of_frameworks/css_advanced_technologies.dart';
import 'package:roadx/pages_of_frameworks/css_framework.dart';
import 'package:roadx/pages_of_frameworks/javascript_framework.dart';
import 'package:roadx/pages_of_important_skills/algorithms_and_datastructure.dart';
import 'package:roadx/pages_of_important_skills/api.dart';
import 'package:roadx/pages_of_important_skills/git.dart';
import 'package:roadx/pages_of_important_skills/github.dart';
import 'package:roadx/pages_of_knowledge/domain.dart';
import 'package:roadx/pages_of_knowledge/hosting.dart';
import 'package:roadx/pages_of_knowledge/http.dart';
import 'package:roadx/pages_of_knowledge/servers.dart';
import 'package:roadx/pages_of_knowledge/tcp_ip.dart';
import 'package:roadx/pages_of_knowledge/www.dart';
import 'package:roadx/pages_of_programming_languages/cplusplus_programming_language.dart';
import 'package:roadx/pages_of_programming_languages/csharp_programming_language.dart';
import 'package:roadx/pages_of_programming_languages/java_programming_language.dart';
import 'package:roadx/pages_of_programming_languages/python_programming_language.dart';
import 'package:roadx/resources/android.dart';
import 'package:roadx/resources/artificialintelligence.dart';
import 'package:roadx/resources/backend.dart';
import 'package:roadx/resources/cross_platform.dart';
import 'package:roadx/resources/cyber_security.dart';
import 'package:roadx/resources/frontend.dart';
import 'package:roadx/resources/network.dart';
import 'package:roadx/resources/ui_ux_design.dart';
import 'package:roadx/resources/wordpress.dart';
import 'package:roadx/widgets/nav.dart';
import 'package:roadx/widgets/splashscreen.dart';
import 'package:roadx/widgets/welcomescreen.dart';

void main() async {
  runApp( const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData.light(),
      dark: ThemeData.dark(),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        theme: theme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        routes: {
          SplashScreen.id: (context) => const SplashScreen(),
          WelcomeScreen.id: (context) => const WelcomeScreen(),
          Nav.id: (context) => const Nav(),
          HomePage.id: (context) => const HomePage(),
          Chatbot.id: (context) => const Chatbot(),
          Categories.id: (context) => const Categories(),
          Documentation.id: (context) => const Documentation(),
          ExtraKnowledge.id: (context) => ExtraKnowledge(),
          Quizzes.id: (context) => const Quizzes(),
          ProgrammingLanguages.id: (context) => ProgrammingLanguages(),
          LearningKids.id: (context) => const LearningKids(),
          Frontend.id: (context) => const Frontend(),
          Backend.id: (context) => const Backend(),
          Wordpress.id: (context) => const Wordpress(),
          AndroidApplication.id: (context) => const AndroidApplication(),
          CrossPlatform.id: (context) => const CrossPlatform(),
          Network.id: (context) => const Network(),
          CyberSecurity.id: (context) => const CyberSecurity(),
          ArtificialIntelligence.id: (context) =>
              const ArtificialIntelligence(),
          UIUXDesign.id: (context) => const UIUXDesign(),
          About.id: (context) => const About(),
          Settings.id: (context) => const Settings(),
          FAQ.id: (context) => const FAQ(),
          PrivacyPolicy.id: (context) => const PrivacyPolicy(),
          TermsOfUse.id: (context) => const TermsOfUse(),
          HTML.id: (context) => const HTML(),
          CSS.id: (context) => const CSS(),
          Javascript.id: (context) => const Javascript(),
          Dart.id: (context) => const Dart(),
          FundamentalsOfFlutter.id: (context) => const FundamentalsOfFlutter(),
          FlutterWithFirebase.id: (context) => const FlutterWithFirebase(),
          StateManagement.id: (context) => const StateManagement(),
          SQLFlutter.id: (context) => const SQLFlutter(),
          SQFLite.id: (context) => const SQFLite(),
          RestAPI.id: (context) => const RestAPI(),
          DifferenceBetweenUIUX.id: (context) => const DifferenceBetweenUIUX(),
          ChooseTheTool.id: (context) => const ChooseTheTool(),
          UnderstandThePlatformGuidelines.id: (context) =>
              const UnderstandThePlatformGuidelines(),
          BasicsOfUIDesign.id: (context) => BasicsOfUIDesign(),
          LearnBasicsOfJavaKotlin.id: (context) =>
              const LearnBasicsOfJavaKotlin(),
          FundamentalsOfAndroidDevelopment.id: (context) =>
              const FundamentalsOfAndroidDevelopment(),
          DataStorage.id: (context) => const DataStorage(),
          NetworkingAndAPIs.id: (context) => const NetworkingAndAPIs(),
          FirebaseIntegration.id: (context) => const FirebaseIntegration(),
          MernBackendDeveloper.id: (context) => const MernBackendDeveloper(),
          NodeJS.id: (context) => const NodeJS(),
          Express.id: (context) => const Express(),
          MongoDB.id: (context) => const MongoDB(),
          LaravelBackendDeveloper.id: (context) =>
              const LaravelBackendDeveloper(),
          PHP.id: (context) => const PHP(),
          Laravel.id: (context) => const Laravel(),
          MySql.id: (context) => const MySql(),
          FlaskBackendDeveloper.id: (context) => const FlaskBackendDeveloper(),
          Python.id: (context) => const Python(),
          Flask.id: (context) => const Flask(),
          Django.id: (context) => const Django(),
          DotNetBackendDeveloper.id: (context) =>
              const DotNetBackendDeveloper(),
          Csharp.id: (context) => const Csharp(),
          DotNet.id: (context) => const DotNet(),
          Sql.id: (context) => const Sql(),
          FundamentalsOfNetwork.id: (context) => const FundamentalsOfNetwork(),
          NetworkProtocolsAndCCNAFundamentals.id: (context) =>
              const NetworkProtocolsAndCCNAFundamentals(),
          WindowsServer.id: (context) => const WindowsServer(),
          LearnBasicOfNetwork.id: (context) => const LearnBasicOfNetwork(),
          CCNASecurity.id: (context) => const CCNASecurity(),
          StudyingLinux.id: (context) => const StudyingLinux(),
          Firewalls.id: (context) => const Firewalls(),
          Flywheel.id: (context) => const Flywheel(),
          Docker.id: (context) => const Docker(),
          XAMPP.id: (context) => const XAMPP(),
          MAMP.id: (context) => const MAMP(),
          IntroductionToWordPress.id: (context) =>
              const IntroductionToWordPress(),
          JavaProgrammingLanguage.id: (context) =>
              const JavaProgrammingLanguage(),
          CPlusPlusProgrammingLanguage.id: (context) =>
              const CPlusPlusProgrammingLanguage(),
          CSharpProgrammingLanguage.id: (context) =>
              const CSharpProgrammingLanguage(),
          PythonProgrammingLanguage.id: (context) =>
              const PythonProgrammingLanguage(),
          Templates.id: (context) => Templates(),
          LearnMathematics.id: (context) => const LearnMathematics(),
          PythonForMachineLearningAndDeepLearning.id: (context) =>
              const PythonForMachineLearningAndDeepLearning(),
          FundamentalsOfMachineLearningAndDeepLearning.id: (context) =>
              const FundamentalsOfMachineLearningAndDeepLearning(),
          ImportantSkills.id: (context) => const ImportantSkills(),
          Git.id: (context) => const Git(),
          Github.id: (context) => const Github(),
          AlgorithmsAndDataStructure.id: (context) =>
              const AlgorithmsAndDataStructure(),
          APISkills.id: (context) => const APISkills(),
          WWW.id: (context) => const WWW(),
          TCPIP.id: (context) => const TCPIP(),
          Hosting.id: (context) => const Hosting(),
          HTTP.id: (context) => const HTTP(),
          Domain.id: (context) => const Domain(),
          Servers.id: (context) => const Servers(),
          Knowledge.id: (context) => const Knowledge(),
          Frameworks.id: (context) => const Frameworks(),
          CSSFramework.id: (context) => const CSSFramework(),
          JavascriptFramework.id: (context) => const JavascriptFramework(),
          CSSAdvancedTechnologies.id: (context) =>
              const CSSAdvancedTechnologies(),
        },
        initialRoute: SplashScreen.id,
      ),
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
