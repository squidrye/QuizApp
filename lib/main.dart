import 'package:flutter/material.dart';
import 'package:module2/question.dart';
import './answer.dart';

void main() {
  runApp(new FirstApp());
}

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstAppState();
  }
}

class _FirstAppState extends State<FirstApp> {
  var counter = 0;
  void _answerPicked() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "question":"What is you favourite colour",
      "answer":[
       "blue","green","black","red"
      ]},
      {
        "question":"What is you favourite animal",
      "answer":[
       "lion","tiger","whale"
      ]},
      {
        "question":"What is you favourite weather",
      "answer":[
       "humid","sunny","rainy"
      ]},
      {
        "question":"What is you favourite programming lang",
      "answer":[
       "c++","dart","java"
      ]},
      
    ];
    
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('First App'),
        ),
        body: new Column(
          children: <Widget>[
            new QuestionWidget(
              questions[counter]["question"]),
           ...(questions[counter]["answer"] as List<String>).map((answer){
             return Answer(_answerPicked,answer);
           }).toList(),
            
          ],
        ),
      ),
    );
  }
}
