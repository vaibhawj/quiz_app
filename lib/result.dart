import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;

  final Function _resetFunction;

  Result(this._totalScore, this._resetFunction);

  String get resultPhrase {
    String resultText;
    if (_totalScore < 8) {
      resultText = 'You are awesome';
    } else if (_totalScore <= 12) {
      resultText = 'You are pretty likeable';
    } else if (_totalScore <= 16) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are terrible!! JK';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Retake Quiz!'),
          onPressed: _resetFunction,
        )
      ],
    ));
  }
}
