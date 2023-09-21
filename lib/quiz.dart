import 'package:adv_basics_flutter/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics_flutter/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const  Color.fromARGB(255, 216, 208, 180),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.deepPurpleAccent, Colors.purple])),
          child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuizScreen(),
        ),
      ),
    );
  }
}
