import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(  // what is a child?
        questionText,
        style: TextStyle(fontSize: 28.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
