import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map((data) {
              return Row(
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                      fontSize: 17,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['question'] as String,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['user_answer'] as String),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(data['correct_answer'] as String),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
