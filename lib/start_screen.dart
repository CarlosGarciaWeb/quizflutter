import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget{
  
    void startQuiz() {}

  const StartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 200, color: const Color.fromARGB(129, 255, 255, 255),),
          const Padding(
            padding: EdgeInsets.only(top: 50.0, bottom: 20.0),
            child: Text(
              "Lean Flutter the Fun Way!",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Quiz',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ));
  }
}