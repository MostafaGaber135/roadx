import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/models/quizzes_model.dart';
import 'package:roadx/pages/Quizzes.dart';

class QuizOfCyberSecurity extends StatefulWidget {
  const QuizOfCyberSecurity({super.key});
  static String id = 'Quiz Of Cyber Security';

  @override
  State<QuizOfCyberSecurity> createState() => _QuizOfCyberSecurityState();
}

class _QuizOfCyberSecurityState extends State<QuizOfCyberSecurity> {
  int currentQuestionIndex = 0;
  int score = 0;
  Map<int, bool> answerWasSelected = {};
  Map<int, bool> correctAnswerSelected = {};
  List<Question> questions = [
    Question(
      questionText: '1.What is a firewall used for in a computer network?',
      options: [
        'A. To boost the system\'s speed',
        'B. To monitor and control incoming and outgoing network traffic based on predetermined security rules',
        'C. To increase storage capacity',
        'D. To enhance the graphics of video games'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: '2.Which of the following is considered a strong password?',
      options: ['A. 12345678', 'B. password', 'C. letmein', 'D. Tr4\$%loP!'],
      correctOptionIndex: 3,
    ),
    Question(
      questionText: '3.What is phishing?',
      options: [
        'A. A method used to distribute malware through legitimate-looking emails',
        'B. A technique used to improve network performance',
        'C. A process of creating backups for data',
        'D. A firewall configuration strategy'
      ],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: '4.What does VPN stand for, and what is its primary use?',
      options: [
        'A. Variable Power Network; to adjust electricity flow',
        'B. Virtual Private Network; to create a secure connection over the internet',
        'C. Visual Public Network; to share images securely',
        'D. Vital Protection Notification; to alert users of security breaches'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '5.What is the main purpose of two-factor authentication (2FA)?',
      options: [
        'A. To double the connection speed of the internet',
        'B. To create two different user accounts',
        'C. To add an extra layer of security by requiring two types of identification',
        'D. To backup data in two separate locations'
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText: '6.What is a zero-day exploit?',
      options: [
        'A. A vulnerability that has been known for zero days, meaning it is newly discovered and not yet patched',
        'B. A tool to calculate the number of days a computer has been running without restarting',
        'C. A software that automatically updates your computer',
        'D. A method to erase data securely without any recovery option'
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
          "Quiz Of Cyber Security",
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
