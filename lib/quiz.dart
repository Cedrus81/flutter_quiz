import 'package:flutter/material.dart';
import 'package:flutter_quiz/questions_screen.dart';
import 'package:flutter_quiz/start_screen.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String ans) {
    // setState(() {
    selectedAnswers.add(ans);
    if (questions.length <= selectedAnswers.length) {
      setState(() {
        activeScreen = 'results-screen';
        selectedAnswers = [];
      });
    }
    // });
  }

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
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : activeScreen == 'questions_screen'
                  ? QuestionsScreen(onChooseAnswer: chooseAnswer)
                  : ResultsScreen(chosenAnswers: selectedAnswers),
        ),
      ),
    );
  }
}
