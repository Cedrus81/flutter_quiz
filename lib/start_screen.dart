import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  // doing this will instanciate the arguement given to the class
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            onPressed: startQuiz,
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
