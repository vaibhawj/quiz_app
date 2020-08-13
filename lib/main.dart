import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
            ? Column(
                children: [
                  Question(_questions[_questionIndex]['questionText']),
                  ...((_questions[_questionIndex]['answers'] as List<String>)
                      .map(
                          (answerText) => Answer(answerText, _answerQuestion))),
                ],
              )
            : Center(
                child: Text("You did it!"),
              ),
      ),
    );
  }
}
