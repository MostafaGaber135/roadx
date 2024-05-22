import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/models/quizzes_model.dart';
import 'package:roadx/pages/Quizzes.dart';

class QuizOfFrontend extends StatefulWidget {
  const QuizOfFrontend({super.key});
  static String id = 'Quiz Of Frontend';

  @override
  State<QuizOfFrontend> createState() => _QuizOfFrontendState();
}

class _QuizOfFrontendState extends State<QuizOfFrontend> {
  int currentQuestionIndex = 0;
  int score = 0;
  Map<int, bool> answerWasSelected = {};
  Map<int, bool> correctAnswerSelected = {};
  List<Question> questions = [
    Question(
      questionText: '1. What does HTML stand for?',
      options: [
        'A. HyperText Markup Language',
        'B. HighText Machine Language',
        'C. HyperTech Markup Language',
        'D. None of the above'
      ],
      correctOptionIndex: 0,
    ),
    Question(
      questionText:
          '2. Which property is used to change the background color of an element?',
      options: [
        'A. color',
        'B. bgcolor',
        'C. background-color',
        'D. backgroundColor'
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText:
          '3. Which method is used to write information to the console?',
      options: [
        'A. console.write()',
        'B. console.log()',
        'C. document.log()',
        'D. document.write()'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '4. Which HTML5 element is used to define a part of a website with related content?',
      options: ['A. <section>', 'B. <div>', 'C. <block>', 'D. <block>'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText:
          '5. Which attribute is important for making web content accessible to screen readers?',
      options: ['A. alt', 'B. title', 'C. title', 'D. label'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: '6. Which of the following is NOT a JavaScript framework?',
      options: ['A. React', 'B. Angular', 'C. Vue', 'D. CSS Grid'],
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
          "Quiz Of Frontend",
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
