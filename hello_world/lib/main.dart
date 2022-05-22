import 'package:flutter/material.dart';
import 'package:hello_world/quiz.dart';
import 'package:hello_world/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQues(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('answer chosen');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionsText': 'what\'s your fav colour',
        'answer': [
          {'text': 'black', 'score': 10},
          {'text': 'Green', 'score': 9},
          {'text': 'red', 'score': 8},
          {'text': 'white', 'score': 7}
        ],
      },
      {
        'questionsText': 'what\'s your fav animal',
        'answer': [
          {'text': 'cat', 'score': 1},
          {'text': 'dog', 'score': 2},
          {'text': 'rabbit', 'score': 3},
          {'text': 'elephant', 'score': 14}
        ],
      },
      {
        'questionsText': 'Who is your fav teacher',
        'answer': [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1}
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQues,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : results(_totalScore, _resetQuiz),
      ),
    );
  }
}
