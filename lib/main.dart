import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whats your favorite color?',
      'Whats you favorite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3 chosen');
                },
              )
            ],
          )),
    );
  }
}
