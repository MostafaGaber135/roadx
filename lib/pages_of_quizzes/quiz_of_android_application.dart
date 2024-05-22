import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/models/quizzes_model.dart';
import 'package:roadx/pages/Quizzes.dart';

class QuizOfAndroidApplication extends StatefulWidget {
  const QuizOfAndroidApplication({super.key});
  static String id = 'Quiz Of Android Application';

  @override
  State<QuizOfAndroidApplication> createState() =>
      _QuizOfAndroidApplicationState();
}

class _QuizOfAndroidApplicationState extends State<QuizOfAndroidApplication> {
  int currentQuestionIndex = 0;
  int score = 0;
  Map<int, bool> answerWasSelected = {};
  Map<int, bool> correctAnswerSelected = {};
  List<Question> questions = [
    Question(
      questionText:
          '1.Which of these is not a fundamental component of an Android application?',
      options: ['A. Activity', 'B. Service', 'C. Intent', 'D. Fragment'],
      correctOptionIndex: 2,
    ),
    Question(
      questionText:
          '2.As of Android development, what does API level refer to?',
      options: [
        'A. The version of Android Studio you are using',
        'B. A specific framework API in the Android SDK',
        'C. The version of the JDK used by Android',
        'D. The security level of an Android application'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '3.Which of the following is the best method for storing complex, relational data persistently in Android apps?',
      options: [
        'A. SharedPreferences',
        'B. Intent',
        'C. SQLite Database',
        'D. Internal Storage'
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText:
          '4.Which file format is used for designing layouts in Android applications?',
      options: ['A. XML', 'B. JSON', 'C. HTML', 'D. Kotlin'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText:
          '5.Which library is commonly used for networking in Android applications?',
      options: ['A. Glide', 'B. Retrofit', 'C. Picasso', 'D. Room'],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '6.What is the primary Android component for performing background tasks without affecting user interface performance?',
      options: [
        'A. AsyncTask',
        'B. IntentService',
        'C. Handler',
        'D. LiveData'
      ],
      correctOptionIndex: 0,
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
          "Quiz Of Android Application",
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
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
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
                      style: const TextStyle(
                          fontSize: 18.0, color: Colors.black87),
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
