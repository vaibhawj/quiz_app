import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final _answer;
  final Function _onAnswer;

  Answer(this._answer, this._onAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(_answer['text']),
        onPressed: _onAnswer(_answer['score']),
      ),
    );
  }
}
