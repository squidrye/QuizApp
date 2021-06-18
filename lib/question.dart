import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  late final question;

  // QuestionWidget(this.question);
  QuestionWidget(var s) {
    this.question = s;
  }
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        question,
        style: TextStyle(
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(20),
    );
  }
}
