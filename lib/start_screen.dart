import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //add transparency to image with the help of opacity
        // Opacity(
        //   opacity: 0.1,
        //   child: Image.asset(
        //     "assets/images/quiz-logo.png",
        //     width: 300,
        //   ),
        // ),
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          //add transparency to image
          color: const Color.fromARGB(150, 232, 220, 219),
        ),
        const SizedBox(
          height: 80,
        ),
         Text(
          "Learn Flutter The Fun Way",
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          label: const Text("Start Quiz"),
        )
      ],
    ));
  }
}
