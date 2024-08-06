import 'package:flutter/material.dart';
import 'package:quizziz/core/quiz_page.dart';
import 'package:quizziz/core/quizzez.dart';
import 'package:quizziz/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'quiz-screen';

  final List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeWidget = activeScreen == 'quiz-screen'
        ? QuizPage(
            onTapAnswer: chooseAnswer,
          )
        : Quizzez(onTapAnswer: chooseAnswer);

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeWidget,
        ),
      ),
    );
  }
}
