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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Yellow', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Dog', 'score': 1},
        {'text': 'Horse', 'score': 6},
      ]
    },
    {
      'questionText': 'Which is your favorite language?',
      'answers': [
        {'text': 'Go', 'score': 4},
        {'text': 'Java', 'score': 10},
        {'text': 'Dart', 'score': 3},
        {'text': 'Python', 'score': 1},
      ]
    }
  ];

  int _totalScore = 0;

  Function _answerQuestion(int score) {
    return () {
      setState(() {
        _questionIndex = _questionIndex + 1;
        _totalScore += score;
      });
    };
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
            : Result(_totalScore, _reset),
      ),
    );
  }
}
