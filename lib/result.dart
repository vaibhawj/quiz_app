import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;

  Result(this._totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Your score: $_totalScore',
      style: TextStyle(fontWeight: FontWeight.bold),
    ));
  }
}
