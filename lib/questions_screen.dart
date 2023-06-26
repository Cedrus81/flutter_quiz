import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentIdx = 0;
  void onAnswer() {
    setState(() {
      currentIdx++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentIdx];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion
                .getShuffledAnswers()
                .map((ans) => AnswerButton(ans, onAnswer)),
          ],
        ),
      ),
    );
  }
}
