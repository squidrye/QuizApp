import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler , this.answerText);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: new RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
        child: Text(answerText) ,
      ),
    );
  }
}
