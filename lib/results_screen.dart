import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'idx': i,
          'question': questions[i].text,
          'yourAnswer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have answered X out of Y questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            const Text('let\'s review your answers:'),
            TextButton(onPressed: () {}, child: const Text('restart quiz'))
          ],
        ),
      ),
    );
  }
}
