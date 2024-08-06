import 'package:quizziz/model/quiz_question.dart';

const questions = [
  QuizQuestion("What are main building blocks of flutter UI?",
      ['Widgets', 'Functions', 'BloC', 'Components']),
  QuizQuestion("What is the language name used in flutter?",
      ['Dart', 'Python', 'Scala', 'Ruby']),
  QuizQuestion("What is the purpose of stateful widget?", [
    'Maintain application state',
    'Nothing much just add boiler plate code',
    'Executing code in an async manner',
    'Executing code in a synchronous manner'
  ]),
  QuizQuestion("What is the platform that flutter cannot target build?",
      ['Xbox', 'Nintendo', 'Windows', 'Linux']),
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
];
