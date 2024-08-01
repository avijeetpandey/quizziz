import 'package:flutter/material.dart';

class StartScreenWidget extends StatelessWidget {
  const StartScreenWidget({super.key});

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
          onPressed: () {},
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          child: const Text("Start Quiz"),
        )
      ],
    );
  }
}
