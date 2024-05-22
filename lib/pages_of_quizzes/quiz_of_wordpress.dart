import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/models/quizzes_model.dart';
import 'package:roadx/pages/Quizzes.dart';

class QuizOfWordpress extends StatefulWidget {
  const QuizOfWordpress({super.key});
  static String id = 'Quiz Of Wordpress';

  @override
  State<QuizOfWordpress> createState() => _QuizOfWordpressState();
}

class _QuizOfWordpressState extends State<QuizOfWordpress> {
  int currentQuestionIndex = 0;
  int score = 0;
  Map<int, bool> answerWasSelected = {};
  Map<int, bool> correctAnswerSelected = {};
  List<Question> questions = [
    Question(
      questionText: '1. What is WordPress?',
      options: [
        'A. A programming language',
        'B. A content management system (CMS)',
        'C. A web browser',
        'D. A computer operating system'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '2. Which of the following is a popular plugin for SEO in WordPress?',
      options: [
        'A. WooCommerce',
        'B. Jetpack',
        'C. Yoast SEO',
        'D. BuddyPress'
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText: '3. What does it mean to "theme" a WordPress site?',
      options: [
        'A. Changing the site\'s core PHP code',
        'B. Modifying the WordPress database',
        'C. Applying a specific design layout to the site',
        'D. Updating WordPress to the latest version'
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText: '4. What is a "child theme" in WordPress?',
      options: [
        'A. A theme designed specifically for children\'s websites',
        'B. A sub-theme that inherits the functionality and styling of another theme, known as the parent theme',
        'C. A lightweight theme designed for fast loading times',
        'D. A theme that is under development and not yet released'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '5. How can you improve the loading speed of a WordPress website?',
      options: [
        'A. By increasing the website\'s bandwidth',
        'B. By installing more plugins',
        'C. By optimizing images and using caching plugins',
        'D. By writing posts in HTML instead of using the visual editor'
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText: '6. What is Gutenberg in the context of WordPress?',
      options: [
        'A. A new theme directory',
        'B. A backup tool',
        'C. A security plugin',
        'D. The block-based editor introduced in WordPress 5.0'
      ],
      correctOptionIndex: 3,
    ),
  ];

  void _answerQuestion(int selectedIndex) {
    setState(() {
      answerWasSelected[currentQuestionIndex] = true;
      correctAnswerSelected[currentQuestionIndex] =
          selectedIndex == questions[currentQuestionIndex].correctOptionIndex;
      if (correctAnswerSelected[currentQuestionIndex]!) {
        score++;
      }
    });

    Future.delayed(
      const Duration(seconds: 1),
      () {
        if (currentQuestionIndex < questions.length - 1) {
          setState(() {
            currentQuestionIndex++;
          });
        } else {
          _showScoreDialog();
        }
      },
    );
  }

  void _showScoreDialog() {
    String userLevel;
    if (score <= 2) {
      userLevel = "Beginner";
    } else if (score <= 4) {
      userLevel = "Intermediate";
    } else {
      userLevel = "Advanced";
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Quiz Completed!"),
          content: Text(
              "Your score is $score/${questions.length}. You are at the $userLevel level."),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Restart"),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  currentQuestionIndex = 0;
                  score = 0;
                  answerWasSelected.clear();
                  correctAnswerSelected.clear();
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Quizzes()),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0.0,
        title: const Text(
          "Quiz Of Wordpress",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              currentQuestion.questionText,
              style:
                  const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView(
              children: currentQuestion.options.asMap().entries.map((option) {
                bool selected =
                    answerWasSelected[currentQuestionIndex] ?? false;
                bool correct =
                    correctAnswerSelected[currentQuestionIndex] ?? false;
                int idx = option.key;
                bool isCorrectOption =
                    currentQuestion.correctOptionIndex == idx;
                return Card(
                  color: selected
                      ? (isCorrectOption
                          ? Colors.green
                          : (correct ? Colors.red : Colors.red))
                      : Colors.white,
                  child: ListTile(
                    title: Text(
                      option.value,
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    onTap: selected
                        ? null
                        : () {
                            _answerQuestion(idx);
                          },
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
