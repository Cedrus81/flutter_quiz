import 'package:flutter/material.dart';

class QuestionSummaryItem extends StatelessWidget {
  const QuestionSummaryItem(this.questionData, {super.key});

  final Map<String, Object> questionData;

  bool isCorrect(Map<String, Object> question) {
    return question['yourAnswer'] == question['correctAnswer'];
  }

  @override
  Widget build(context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(bottom: 24, right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: isCorrect(questionData)
                ? const Color.fromARGB(100, 3, 100, 211)
                : const Color.fromARGB(100, 233, 38, 13),
          ),
          child: Center(
            child: Text(
              ((questionData['idx'] as int) + 1).toString(),
              style: const TextStyle(
                fontSize: 34,
                color: Colors.white,
                letterSpacing: 18,
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 45, 62, 82)),
                child: Text(
                  questionData['question'] as String,
                  style: const TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: isCorrect(questionData)
                        ? const Color.fromARGB(100, 3, 100, 211)
                        : const Color.fromARGB(100, 233, 38, 13)),
                child: Text(
                  questionData['yourAnswer'] as String,
                  style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
              if (!isCorrect(questionData))
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 45, 62, 82),
                  ),
                  child: Text(
                    'Correct answer: ${questionData['correctAnswer'] as String}',
                    style: const TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
