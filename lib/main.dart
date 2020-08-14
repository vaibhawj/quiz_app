import 'package:flutter/material.dart';
import 'package:flutter_app/result.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Yellow', 'Green']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Horse', 'Lion', 'Elephant']
    },
    {
      'questionText': 'Which is your favorite language?',
      'answers': ['Golang', 'Dart', 'Python', 'Javascript']
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(),
      ),
    );
  }
}
