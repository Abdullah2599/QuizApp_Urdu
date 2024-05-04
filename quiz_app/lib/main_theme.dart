import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:quiz_app/question_screen.dart';

class MainTheme extends StatelessWidget {
  const MainTheme(this.quizApp, {super.key});

  final void Function() quizApp;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 235,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Test Your General Knowledge',
            style: TextStyle(
              fontFamily: GoogleFonts.satisfy(
                fontWeight: FontWeight.normal,
              ).fontFamily,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: () {
                quizApp();
              },
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: Text(
                'Start Quiz',
                style: TextStyle(
                  fontFamily:
                      GoogleFonts.libreBaskerville(fontWeight: FontWeight.w100)
                          .fontFamily,
                  color: const Color.fromARGB(255, 0, 234, 255),
                ),
              ))
        ],
      ),
    );
  }
}
