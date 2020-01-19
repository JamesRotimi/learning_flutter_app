import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if(resultScore <= 8) {
      resultText = ' You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = ' my ggg';
    } else if ( resultScore <= 18){
      resultText = ' Is that you yeah';
    } else {
      resultText = ' You a badddd man';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(resultPhrase, style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
    )
    );
  }
}
