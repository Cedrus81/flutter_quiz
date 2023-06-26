import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.onClick, {super.key});

  final String answer;
  final void Function() onClick;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          backgroundColor: const Color.fromARGB(190, 38, 50, 56),
          foregroundColor: Colors.white),
      child: Text(answer),
    );
  }
}
