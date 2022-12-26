import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    var resultText = 'you did it !';

    if (resultScore >= 15) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 10) {
      resultText = 'Pretty likeable';
    } else {
      resultText = 'Decent choice..';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: resetHandler, child: Text('Restart Quiz'))
      ]),
    );
  }
}
