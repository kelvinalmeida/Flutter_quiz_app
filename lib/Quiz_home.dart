import 'package:flutter/material.dart';

class QuizHome extends StatelessWidget {
  const QuizHome({super.key});

  void pressButton() {
    //...
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 72, 10, 129),
            Color.fromARGB(255, 54, 3, 143)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Learn Flutter the fun way!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(120, 45, 0, 53)),
                  onPressed: pressButton,
                  icon: const Icon(Icons.arrow_right_alt),
                  label: const Text(
                    'Start Quiz',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
