import 'package:flutter/material.dart';
import 'package:quizziz/widgets/start_screen_widget.dart';

class Quizzez extends StatelessWidget {
  const Quizzez(
    this.startQuiz, {
    super.key,
  });

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StartScreenWidget(startQuiz),
    );
  }
}
