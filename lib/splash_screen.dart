import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png",
              width: 300.0, color: const Color.fromARGB(171, 255, 254, 255)),
          const SizedBox(
            height: 40.0,
          ),
          Text(
            "Agama Katolik kelas 4",
            style: GoogleFonts.lato(
              fontSize: 24.0,
              color: const Color(0xFF50D5B7),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFFA3C9E2),
              side: const BorderSide(
                color: Color(0xFFA3C9E2),
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 24.0,
            ),
            onPressed: () => startQuiz(),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
