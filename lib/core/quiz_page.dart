import 'package:flutter/material.dart';
import 'package:quizziz/widgets/answer_button.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Questions",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: "Text", onTap: () {}),
          AnswerButton(answerText: "Text", onTap: () {}),
          AnswerButton(answerText: "Text", onTap: () {}),
          AnswerButton(answerText: "Text", onTap: () {})
        ],
      ),
    );
  }
}
