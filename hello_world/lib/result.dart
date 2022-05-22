import 'package:flutter/material.dart';

class results extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  results(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 10) {
      resultText = 'You are good';
    } else if (resultScore <= 16) {
      resultText = ' You are noice';
    } else {
      resultText = 'you are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text('reset quiz'),
          )
        ],
      ),
    );
  }
}
