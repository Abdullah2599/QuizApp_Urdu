import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.notoNastaliqUrdu(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Your Answer:',style: 
                  TextStyle(
                      color:Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w200,
                    )),
                    const SizedBox(
                  height: 1,
                ),
                Text(itemData['user_answer'] as String,
                    style: GoogleFonts.notoNastaliqUrdu(
                      fontWeight: FontWeight.w400,
                      color:const Color.fromARGB(255, 255, 255, 255),
                    )),
                    const SizedBox(
                  height: 2,
                ),
                    const Text('Correct Answer:',style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w200,
                    )),
                    const SizedBox(
                  height: 1,
                ),
                Text(itemData['correct_answer'] as String,
                    style: GoogleFonts.notoNastaliqUrdu(   
                      fontWeight: FontWeight.normal,
                     color: const Color.fromARGB(255, 84, 243, 84),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
