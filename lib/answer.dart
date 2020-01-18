import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler; // this means that whatever is passsed to the Answer construct has to be a pointer that points to a function.
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
           color: Colors.blue,
            textColor: Colors.white,
            child: Text(answerText), onPressed: selectHandler), // We are passing the name of the function to on press not to the result hence we pass answerQuestion without ()- the name acts as a point to the function so that it only executed when the button is pressed and not simultaneously execute when initiated.

    );
  }
}
