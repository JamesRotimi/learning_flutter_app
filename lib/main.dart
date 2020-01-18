import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//void main() {
//  runApp(MyApp());
//}

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();   // by returning a MyAppState object we have connected the two classes. The state hold the data that is used by the buildMethod.
  }

}


class _MyAppState extends State<MyApp> {  // this <MyApp> tells flutter that state<Myapp> and myapp are connected
  var _questionIndex = 0;

  void _answerQuestion () {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {'questionText': 'What\'s your favourite colour?',
      'answers': ['Black','Red','Green', 'Blue']
      },
      {'questionText': 'What\'s your favourite animal?',
        'answers': ['Tiger','Elepahnt','Bird', 'Cheetah']
      },
      {'questionText': 'who is your favourite Instructor?',
        'answers': ['Rotimi','Clmbxr','Green', 'Blue']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'My first thing',
        )),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
