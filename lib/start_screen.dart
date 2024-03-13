import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 75, top: 125),
            child: Text(
              'INDIA',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Indian', fontSize: 95),
            ),
          ),
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          Text(
            'How Well\nDo You Know Your Country?',
            textAlign: TextAlign.center,
            style: GoogleFonts.aboreto(
              color: Colors.black87,
              fontSize: 20,
              textStyle: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),

          ElevatedButton(
            child: Text('Start Quiz ->'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: startQuiz,
          ),
        ],
      ),
    );
  }
}
