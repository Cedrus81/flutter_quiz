import 'package:flutter_quiz/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'What keyword is used to represent a constant in Dart?',
    [
      'final',
      'const',
      'static',
      'var',
    ],
  ),
  QuizQuestion(
    'What symbol is used for string interpolation in Dart?',
    [
      '\$',
      '#',
      '@',
      '%',
    ],
  ),
  QuizQuestion(
    'What keyword is used to declare asynchronous functions in Dart?',
    [
      'async',
      'await',
      'future',
      'promise',
    ],
  ),
  QuizQuestion(
    'How to declare a list of integers in Dart?',
    [
      'List<int> numbers;',
      'int[] numbers;',
      'numbers: List<int>;',
      'Array<int> numbers;'
    ],
  ),
  QuizQuestion(
    'In Dart, which method is automatically called when an instance of a class is created?',
    [
      'constructor()',
      'onCreate()',
      'init()',
      'QuizQuestion()',
    ],
  ),
  QuizQuestion(
    'What data structure does Dart provide to group related items?',
    [
      'List',
      'Array',
      'Class',
      'Structure',
    ],
  ),
  QuizQuestion(
    'How do you denote single line comments in Dart?',
    [
      '//',
      '/*',
      '--',
      '#',
    ],
  ),
  QuizQuestion(
    'Which keyword is used to denote inheritance in Dart?',
    [
      'extends',
      'inherits',
      'super',
      'base',
    ],
  ),
  QuizQuestion(
    'What is the name for the null-aware operator in Dart?',
    [
      '?.',
      '??',
      '!',
      '??=',
    ],
  ),
  QuizQuestion(
    'What is the correct way to import a library in Dart?',
    [
      'import "library.dart";',
      'import library',
      '#import',
      'using',
    ],
  ),
  QuizQuestion(
    'How to denote private variables or methods in Dart?',
    [
      '_',
      'private',
      'priv',
      '-',
    ],
  ),
  QuizQuestion(
    'Which keyword is used to declare an Interface in Dart?',
    [
      'interface',
      'implements',
      'protocol',
      'interface class',
    ],
  ),
];
