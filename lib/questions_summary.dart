import 'package:flutter/material.dart';

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
          children: summaryData
              .map(
                (item) => Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: isCorrect(item)
                            ? const Color.fromARGB(10, 3, 100, 211)
                            : const Color.fromARGB(9, 233, 38, 13),
                      ),
                      child: Text(
                        ((item['idx'] as int) + 1).toString(),
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(item['question'] as String),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(child: Text(item['yourAnswer'] as String)),
                          Container(
                              child: Text(item['correctAnswer'] as String))
                        ],
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
