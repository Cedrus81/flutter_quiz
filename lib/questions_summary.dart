import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return Column(
      children: summaryData
          .map(
            (item) => Row(
              children: [
                Text(((item['idx'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(item['question'] as String),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(item['yourAnswer'] as String),
                      Text(item['correctAnswer'] as String)
                    ],
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
