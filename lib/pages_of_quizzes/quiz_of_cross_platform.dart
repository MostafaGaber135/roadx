// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/models/quizzes_model.dart';
import 'package:roadx/pages/quizzes.dart';

class QuizOfCrossPlatform extends StatefulWidget {
  const QuizOfCrossPlatform({super.key});
  static String id = 'QuizOfCrossPlatform';

  @override
  State<QuizOfCrossPlatform> createState() => _QuizOfCrossPlatformState();
}

class _QuizOfCrossPlatformState extends State<QuizOfCrossPlatform> {
  int currentQuestionIndex = 0;
  int score = 0;
  Map<int, bool> answerWasSelected = {};
  Map<int, bool> correctAnswerSelected = {};
  List<Question> questions = [
    Question(
      questionText: '1.What is Flutter?',
      options: [
        'A. A Python web framework used for developing backend applications.',
        'B. An open-source UI software development kit created by Google.',
        'C. A JavaScript library for building user interfaces.',
        'D. A cloud computing service provided by Amazon.'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '2.Which widget in Flutter is commonly used to create a button?',
      options: [
        'A. RaisedButton',
        'B. FloatingActionButton',
        'C. FlatButton',
        'D. IconButton'
      ],
      correctOptionIndex: 0,
    ),
    Question(
      questionText:
          '3.Which command is used to create a new Flutter project from the command line interface (CLI)?',
      options: [
        'A. flutter start',
        'B. flutter create',
        'C. flutter new',
        'D. flutter init'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: '4.In Flutter, what does the "setState" method do?',
      options: [
        'A. It rebuilds the entire UI hierarchy.',
        'B. It updates the state of a widget and triggers a rebuild of the widget subtree.',
        'C. It resets the state of the entire application.',
        'D. It initializes the state of a widget.'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '5.Which of the following is NOT a layout widget in Flutter?',
      options: ['A. Row', 'B. Stack', 'C. Container', 'D. Text'],
      correctOptionIndex: 3,
    ),
    Question(
      questionText:
          '6.Which of the following is NOT a layout widget in FlutterHow can you add padding around a widget in Flutter?',
      options: [
        'A. Using the EdgeInsets property of the widget',
        'B. Wrapping the widget with a Padding widget and specifying the padding',
        'C. Applying margin to the widget',
        'D. All of the above'
      ],
      correctOptionIndex: 1,
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
          "Quiz Of Crossplatform",
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
