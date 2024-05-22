import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/models/quizzes_model.dart';
import 'package:roadx/pages/Quizzes.dart';

class QuizOfUIUXDesign extends StatefulWidget {
  const QuizOfUIUXDesign({super.key});
  static String id = 'Quiz Of UI UX Design';

  @override
  State<QuizOfUIUXDesign> createState() => _QuizOfUIUXDesignState();
}

class _QuizOfUIUXDesignState extends State<QuizOfUIUXDesign> {
  int currentQuestionIndex = 0;
  int score = 0;
  Map<int, bool> answerWasSelected = {};
  Map<int, bool> correctAnswerSelected = {};
  List<Question> questions = [
    Question(
      questionText:
          '1. Which of the following is NOT a fundamental principle of user interface (UI) design?',
      options: [
        'A. Consistency',
        'B. Complexity',
        'C. Feedback',
        'D. Visibility'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '2. In UI/UX design, what does the term "affordance" refer to?',
      options: [
        'A. Aesthetic appeal of the interface',
        'B. Ability of an interface element to suggest its functionality',
        'C. Responsiveness of the interface to user input',
        'D. Speed of navigation within the interface'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '3. Which design principle emphasizes organizing elements based on their importance and relationship to each other?',
      options: [
        'A. Visual Hierarchy',
        'B. Minimalism',
        'C. Skeuomorphism',
        'D. Progressive Disclosure'
      ],
      correctOptionIndex: 0,
    ),
    Question(
      questionText:
          '4. What is the purpose of usability testing in UI/UX design?',
      options: [
        'A. To evaluate the interface\'s aesthetics',
        'B. To assess the interface\'s performance under different conditions',
        'C. To determine the marketability of the product',
        'D. To validate the designer\'s creative choices'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '5. Which of the following best describes the concept of "information architecture" in UI/UX design?',
      options: [
        'A. The visual appeal of the interface',
        'B. The process of organizing and labeling content to support usability',
        'C. The use of motion and animation within the interface',
        'D. The responsiveness of the interface to user input'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: '6. What role does empathy play in UI/UX design?',
      options: [
        'A. Understanding the technical constraints of the platform',
        'B. Identifying user needs and creating designs that address them',
        'C. Enhancing the visual appeal of the interface',
        'D. Ensuring consistency across different devices'
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
          "Quiz Of UI UX Design",
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
