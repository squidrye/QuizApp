import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class QuizRuns extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerPicked;
  final int counter;
  QuizRuns(this.questions, this.answerPicked, this.counter);

  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new QuestionWidget(questions[counter]["question"]),
        ...(questions[counter]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => {answerPicked(answer["score"])}, answer["text"] as String);
        }).toList(),
      ],
    );
  }
}
