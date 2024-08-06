import 'package:flutter/material.dart';
import 'package:quizziz/widgets/start_screen_widget.dart';

class Quizzez extends StatelessWidget {
  Quizzez({required this.onTapAnswer, super.key});

  void Function(String answer) onTapAnswer;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StartScreenWidget(
        onTapAnswer: onTapAnswer,
      ),
    );
  }
}
