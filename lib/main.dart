import 'package:flutter/material.dart';
import './quizRun.dart';
import './Result.dart';
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
   final questions = const [
      {
        "question":"What is you favourite colour",
      "answer":[
       {"text":"blue","score":6},
       {"text":"green","score":3},
       {"text":"black","score":10},
       {"text":"red","score":8}
      ],
      },
      {
        "question":"What is you favourite animal",
      "answer":[
        {"text":"lion","score":8},
       {"text":"rabbit","score":1},
       {"text":"whale","score":7},
       {"text":"snakes","score":10},
      ],
      },
      {
        "question":"What is you favourite weather",
      "answer":[
        {"text":"humid","score":10},
       {"text":"sunny","score":7},
       {"text":"rainy","score":3},
      ],},
      {
        "question":"What is you favourite programming lang",
      "answer":[
        {"text":"c++","score":1},
       {"text":"java","score":1},
       {"text":"python","score":1},
       {"text":"dart","score":1},
      ],},
      
    ];
  var counter = 0;
  var totalScore=0;
void _reset(){
  setState((){
      counter=0;
  totalScore=0;
  });
}

  void _answerPicked(int score) {
    totalScore=totalScore+score;
    setState(() {
      counter++;
    });
    if(counter<questions.length){
      print("more questions available");
    }else print("no more questions");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('First App'),
        ),
        body:counter<questions.length? QuizRuns(questions,_answerPicked,counter)
        :new ShowResult(totalScore,_reset),
      ),
    );
  }
}
