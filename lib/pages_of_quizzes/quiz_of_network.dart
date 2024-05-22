import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/models/quizzes_model.dart';
import 'package:roadx/pages/Quizzes.dart';

class QuizOfNetwork extends StatefulWidget {
  const QuizOfNetwork({super.key});
  static String id = 'Quiz Of Network';

  @override
  State<QuizOfNetwork> createState() => _QuizOfNetworkState();
}

class _QuizOfNetworkState extends State<QuizOfNetwork> {
  int currentQuestionIndex = 0;
  int score = 0;
  Map<int, bool> answerWasSelected = {};
  Map<int, bool> correctAnswerSelected = {};
  List<Question> questions = [
    Question(
      questionText: '1. What does TCP/IP stand for in computer networking?',
      options: [
        'A. Transmission Control Protocol/Internet Protocol',
        'B. Technical Control Protocol/Information Processing',
        'C. Terminal Connection Process/Internet Protocol',
        'D. Total Connection Process/Internal Protocol'
      ],
      correctOptionIndex: 0,
    ),
    Question(
      questionText:
          '2. Which device operates at the network layer of the OSI model?',
      options: ['A. Hub', 'B. Switch', 'C. Router', 'D. Repeater'],
      correctOptionIndex: 2,
    ),
    Question(
      questionText: '3. What is the purpose of DHCP in a network?',
      options: [
        'A. To translate domain names to IP addresses',
        'B. To assign IP addresses dynamically to devices on a network',
        'C. To encrypt data transmission',
        'D. To filter incoming and outgoing traffic'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '4. Which protocol is used to retrieve email from a remote server?',
      options: ['A. POP3', 'B. SMTP', 'C. HTTP', 'D. FTP'],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: '5. What is the subnet mask for a Class C IP address?',
      options: [
        'A. 255.0.0.0',
        'B. 255.255.0.0',
        'C. 255.255.255.0',
        'D. 255.255.255.255'
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText: '6. What does DNS stand for in the context of networking?',
      options: [
        'A. Data Naming Service',
        'B. Domain Name System',
        'C. Dynamic Network Security',
        'D. Digital Network Sync'
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
          "Quiz Of Network",
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

