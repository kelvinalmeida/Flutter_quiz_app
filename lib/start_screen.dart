import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              'Learn Flutter the fun way!',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ButtonTheme(
            minWidth: 10,
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(120, 45, 0, 53)),
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Quiz',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
