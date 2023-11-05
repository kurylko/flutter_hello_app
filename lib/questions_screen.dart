import 'package:first_flutter_app/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer; //trigger event

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
//managing  questions  dynamically
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer); // getting onSelectAnswer from class QuestionsScreen
    //currentQuestionIndex = currentQuestionIndex + 1; //increment question index
    //currentQuestionIndex += 1; //shortcut for incrementation
    setState(() {
      currentQuestionIndex++; // increments the value by 1
    });
  }

  @override
  Widget build(BuildContext context) {
    //accessing to quiz questions from data folder dynamically
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 204, 183, 234),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // dynamicly populating the answer buttons with data - ... - spreading
            ...currentQuestion.getShuffledAnswers().map((answer) {
              //from quizQuiestions model
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer); //answer that belongs to the selected button
                  });
            }),
          ],
        ),
      ),
    );
  }
}
