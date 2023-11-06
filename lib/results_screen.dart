import 'package:first_flutter_app/data/questions.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/questions_summary/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });
  
  final void Function() onRestart;
  final List<String> chosenAnswers;

// for loop goes through all questions and chosen answers
  List<Map<String, Object>> get summaryData{ // getter - special dart method 
    // Map is a kind of Jason
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      //loop body //
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numberOfTotalQuestions =
        questions.length; // total amount of questions
    final numberOfCorrectQuestions = summaryData.where((data) => 
      data['user_answer'] == data['correct_answer']
    ).length; //filtering correct answers

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Wow! $numberOfCorrectQuestions questions from $numberOfTotalQuestions are correct',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 204, 183, 234),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
