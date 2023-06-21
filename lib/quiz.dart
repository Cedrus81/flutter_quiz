import 'package:flutter/material.dart';
import 'package:flutter_quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String currScreen = 'dis nuts';

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF42B883),
                Color(0xFF347474),
                Color(0xFF35495e),
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
