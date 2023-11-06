import 'package:first_flutter_app/questions_summary/summary_item.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(  // makes child scrollable
        child: Column(
          children: summaryData.map(
            (data) {
            return SummaryItem(data);
          },).toList(),
            // Row(
            //   //flex widget
            //   children: [
            //     const QuestionIdentifier(),
            //     Expanded(
            //       //allows childs to take available space along flex widget's mainAxis - restricts the with of column
            //       child: Column(
            //         children: [
            //           Text(
            //             data['question'] as String,
            //             style: GoogleFonts.lato(
            //               color: const Color.fromARGB(255, 220, 183, 234),
            //               fontSize: 18,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           const SizedBox(
            //             height: 5,
            //           ),
            //           Text(
            //             (data['user_answer'] as String),
            //             style: GoogleFonts.lato(
            //               color: const Color.fromARGB(255, 234, 183, 190),
            //               fontSize: 14,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           Text((data['correct_answer'] as String),
            //               style: GoogleFonts.lato(
            //                 color: Color.fromARGB(255, 9, 192, 42),
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.bold,
            //               )),
            //           const SizedBox(
            //             height: 13,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // );
         // }).toList(),
        //),

     ), ), );
  }
}
