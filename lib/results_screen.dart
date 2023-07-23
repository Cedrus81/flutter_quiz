import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onResetQuiz,
  });

  final List<String> chosenAnswers;
  final VoidCallback onResetQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'idx': i,
          'question': questions[i].text,
          'correctAnswer': questions[i].answers[0],
          'yourAnswer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numCorrectQuestions =
        summaryData.where((q) => q['yourAnswer'] == q['correctAnswer']).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'You have answered $numCorrectQuestions out of ${questions.length} questions correctly!',
              style: const TextStyle(fontSize: 26, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'let\'s review your answers:',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: summaryData),
            TextButton(
                onPressed: onResetQuiz, child: const Text('restart quiz'))
          ],
        ),
      ),
    );
  }
}
