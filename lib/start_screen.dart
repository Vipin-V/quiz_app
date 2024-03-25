import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              color: const Color.fromARGB(150, 255, 255, 255),
              width: 300,
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Flutter Quiz app by Vipin V',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252),
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              onPressed: startQuiz,
              icon: const Icon(
                Icons.arrow_right_alt,
              ),
              label: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
