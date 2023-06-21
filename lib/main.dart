import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 250,
                ),
                const SizedBox(height: 60),
                const Text(
                  'Learn Flutter the fun way!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                OutlinedButton(
                  onPressed: () => {},
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
