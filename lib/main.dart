import 'package:flutter/material.dart';

void main() {
  runApp(new FirstApp());
}

class FirstApp extends StatefulWidget {
@override
State<StatefulWidget> createState(){
 return FirstAppState();
}
}
class FirstAppState extends State<FirstApp>{
  var counter=0;
  void answerPicked() {
    print("answer choosen");
   setState((){
     counter++;
   });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    List <String> questions=["What is you favourite colour","What is you fav animal"];
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('First App'),
        ),
        body: new Column(
          children: <Widget>[
            new Text(questions[counter]),
            new RaisedButton(
              child: new Text("Answer 1"),
              onPressed: answerPicked,
            ),
            new RaisedButton(
              child: new Text("Answer 2"),
              onPressed: answerPicked,
            ),
            new RaisedButton(
              child: new Text("Answer 3"),
              onPressed: answerPicked,
            ),
          ],
        ),
      ),
    );
  }
}
