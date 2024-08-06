import 'package:flutter/material.dart';
import 'package:quizziz/core/quiz_page.dart';

class StartScreenWidget extends StatelessWidget {
  const StartScreenWidget({required this.onTapAnswer, super.key});

  final void Function(String answer) onTapAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuizPage(
                  onTapAnswer: onTapAnswer,
                ),
              ),
            );
          },
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          child: const Text("Start Quiz"),
        )
      ],
    );
  }
}
