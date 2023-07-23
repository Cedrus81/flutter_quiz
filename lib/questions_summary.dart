import 'package:flutter/material.dart';
import 'package:flutter_quiz/question_summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;

  bool isCorrect(Map<String, Object> question) {
    return question['yourAnswer'] == question['correctAnswer'];
  }

  @override
  Widget build(context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: summaryData
              .map(
                (item) => QuestionSummaryItem(item),
              )
              .toList(),
        ),
      ),
    );
  }
}
