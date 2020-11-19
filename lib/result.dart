import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function reset;
  Result(this.totalScore, this.reset);

  String get resultPhrase {
    var resultText;
    if (totalScore <= 8) {
      resultText = 'You\'re awesome';
    } else {
      resultText = 'You are not nice';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 40),
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          FlatButton(
            child: Text('Restart Quiz!!'),
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
