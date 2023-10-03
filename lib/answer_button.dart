import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.selectAnswer});

  final String answerText;

  final void Function() selectAnswer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: selectAnswer,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            backgroundColor: const Color.fromARGB(195, 147, 56, 167),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(answerText, textAlign: TextAlign.center,));
  }
}
