import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/models/quizzes_model.dart';
import 'package:roadx/pages/Quizzes.dart';

class QuizOfBackend extends StatefulWidget {
  const QuizOfBackend({super.key});
  static String id = 'Quiz Of Backend';

  @override
  State<QuizOfBackend> createState() => _QuizOfBackendState();
}

class _QuizOfBackendState extends State<QuizOfBackend> {
  int currentQuestionIndex = 0;
  int score = 0;
  Map<int, bool> answerWasSelected = {};
  Map<int, bool> correctAnswerSelected = {};
  List<Question> questions = [
    Question(
      questionText:
          '1. What is the primary role of a backend in web development?',
      options: [
        'A. Designing the user interface',
        'B. Managing the database and server-side logic',
        'C. Ensuring the website\'s responsiveness',
        'D. Optimizing graphics and visuals'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '2. Which programming language is widely used for server-side scripting in web?',
      options: ['A. JavaScript', 'B. Python', 'C. HTML', 'D. CSS'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: '3. What type of database is MongoDB?',
      options: [
        'A. Relational Database',
        'B. NoSQL Database',
        'C. Graph Database',
        'D. Distributed Database'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: '4. What does REST stand for in RESTful APIs?',
      options: [
        'A. Real-time Efficient Server Transfer',
        'B. Representational State Transfer',
        'C. Responsive Standard Tech',
        'D. Relative Server Transaction'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: '5. What is a common method for securing API endpoints?',
      options: [
        'A. Encryption with AES',
        'B. Using CAPTCHAs',
        'C. Token-based authentication',
        'D. Client-side validation'
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText:
          '6. What is a characteristic feature of microservices architecture?',
      options: [
        'A. A single, monolithic codebase for easier management',
        'B. A collection of loosely coupled services',
        'C. High dependency between components for better performance',
        'D. Use of a single database for all services'
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
          "Quiz Of Backend",
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
