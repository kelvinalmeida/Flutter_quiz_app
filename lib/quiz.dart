import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

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
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 147, 49, 238),
                  Color.fromARGB(255, 54, 3, 143)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: activeScreen == 'start-screen'
                  ? StartScreen(switchScreen)
                  : const QuestionsScreen())),
    );
  }
}