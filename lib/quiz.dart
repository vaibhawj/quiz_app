import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final _questions;

  final _currentQuestion;

  final Function _answerQuestion;

  Quiz(this._questions, this._currentQuestion, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_currentQuestion]['questionText']),
        ...((_questions[_currentQuestion]['answers'] as List<Object>)
            .map((answerText) => Answer(answerText, _answerQuestion))),
      ],
    );
  }
}
