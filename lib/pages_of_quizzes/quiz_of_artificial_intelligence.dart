import 'package:flutter/material.dart';
import 'package:roadx/constants.dart';
import 'package:roadx/models/quizzes_model.dart';
import 'package:roadx/pages/Quizzes.dart';

class QuizOfArtificialIntelligence extends StatefulWidget {
  const QuizOfArtificialIntelligence({super.key});
  static String id = 'Quiz Of Artificial Intelligence';

  @override
  State<QuizOfArtificialIntelligence> createState() =>
      _QuizOfArtificialIntelligenceState();
}

class _QuizOfArtificialIntelligenceState
    extends State<QuizOfArtificialIntelligence> {
  int currentQuestionIndex = 0;
  int score = 0;
  Map<int, bool> answerWasSelected = {};
  Map<int, bool> correctAnswerSelected = {};
  List<Question> questions = [
    Question(
      questionText: '1.What is Artificial Intelligence?',
      options: [
        'A. The study of computer systems that mimic human intelligence processes',
        'B. The process of improving the physical strength of computers',
        'C. The study of natural sciences',
        'D. The practice of designing computer games'
      ],
      correctOptionIndex: 0,
    ),
    Question(
      questionText: '2.Which algorithm is a type of supervised learning?',
      options: [
        'A. K-Means Clustering',
        'B. Principal Component Analysis (PCA)',
        'C. Decision Trees',
        'D. Autoencoders'
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText:
          '3.What is the primary function of the activation function in a neural network?',
      options: [
        'A. To normalize the input data',
        'B. To reduce the dimensionality of the input data',
        'C. To decide whether a neuron should be activated or not',
        'D. To prevent the model from overfitting'
      ],
      correctOptionIndex: 2,
    ),
    Question(
      questionText: '4.What does Tokenization mean in the context of NLP?',
      options: [
        'A. Encrypting sensitive text data',
        'B. Breaking down a text into smaller units like words or phrases',
        'C. Translating text from one language to another',
        'D. Counting the number of words in a document'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText: '5.What is the main concern of AI ethics?',
      options: [
        'A. Improving the computational speed of AI algorithms',
        'B. Ensuring AI technologies are developed and used in a morally responsible way',
        'C. Creating AI that can pass the Turing Test',
        'D. Designing AI that can operate without human intervention'
      ],
      correctOptionIndex: 1,
    ),
    Question(
      questionText:
          '6.What are Generative Adversarial Networks (GANs) primarily used for?',
      options: [
        'A. Real-time decision making',
        'B. Generating new data instances that resemble your training data',
        'C. Improving the accuracy of predictive models',
        'D. Filtering spam emails'
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
          "Quiz Of Artificial Intelligence",
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
