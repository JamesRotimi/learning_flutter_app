import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();   // by returning a MyAppState object we have connected the two classes. The state hold the data that is used by the buildMethod.
  }

}


class MyAppState extends State<MyApp> {  // this <MyApp> tells flutter that state<Myapp> and myapp are connected
  var questionIndex = 0;

  void answerQuestion () {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'My first thing',
        )),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion), // We are passing the name of the function to on press not to the result hence we pass answerQuestion without ()- the name acts as a point to the function so that it only executed when the button is pressed and not simultaneously execute when initiated.
            RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
