import 'package:flutter/material.dart';

class ShowResult extends StatelessWidget {
  int score;
  VoidCallback reset;
  ShowResult(this.score, this.reset);
  String getText() {
    String resultText = "You have done well";
    if (score < 10) {
      resultText = "You are awesome and innocent lol";
    } else if (score < 15) {
      resultText = "Pretty Likeable! ";
    } else if (score < 20) {
      resultText = "look I haven't settled scores yet but you are strange ";
    } else
      resultText = "That is bad";
    return resultText;
  }

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        getText(),
        style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
        textAlign:TextAlign.center,
      ),
      FlatButton(
        child: Text("Restart Quiz?",style:TextStyle(backgroundColor: Colors.blue)),
        onPressed: reset,
      ),
    ]);
  }
}
