import 'package:flutter/material.dart';
import 'package:learning_flutter_app/result.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); // by returning a MyAppState object we have connected the two classes. The state hold the data that is used by the buildMethod.
  }
}

class _MyAppState extends State<MyApp> {
  // this <MyApp> tells flutter that state<Myapp> and myapp are connected

  static final _questions = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text':'Black', 'score': 10},
        {'text':'Red', 'score': 5},
        {'text': 'Green', 'score' : 3},
        {'text':'Blue', 'score' : 2}
        ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text':'Tiger', 'score': 10},
        {'text':'Elephant', 'score': 5},
        {'text': 'Bird', 'score' : 3},
        {'text':'Dog', 'score' : 2}]
    },
    {
      'questionText': 'who is your favourite Instructor?',
      'answers': [
        {'text':'Rotimi', 'score': 8},
        {'text':'PtMac', 'score': 5},
        {'text': 'Chiso', 'score' : 3},
        {'text':'Terrol', 'score' : 7}
        ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have no more questions!');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'My first thing',
        )),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex,)
            : Result(_totalScore)
      ),
    );
  }
}
