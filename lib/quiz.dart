import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          //shows question according to index
          questions[questionIndex]['questionText'],
        ),
        //... to avoid nested list( takes items of list and adds them as individual items to the outer list)
        //maps through the answers and shows them
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          //() => creates a function bc onPressed only takes funtions without arguments
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
