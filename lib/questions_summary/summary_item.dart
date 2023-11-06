import 'package:flutter/material.dart';
import 'package:first_flutter_app/questions_summary/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                (itemData['user_answer'] as String),
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 234, 183, 190),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text((itemData['correct_answer'] as String),
                  style: GoogleFonts.lato(
                    color: Color.fromARGB(255, 9, 192, 42),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
