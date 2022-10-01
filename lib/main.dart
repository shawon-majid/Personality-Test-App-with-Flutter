import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Blue', 'score': 4},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'What do you like most?',
      'answers': [
        {'text': 'CP', 'score': 10},
        {'text': 'Development', 'score': 8},
        {'text': 'Playing', 'score': 7},
        {'text': 'Reading', 'score': 5},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetAll() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _questionIndex++;

    _totalScore += score;

    setState(() {});

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // foregroundColor: Color(12),
          // backgroundColor: Color.fromARGB(255, 255, 0, 0),
          title: Text(
            'Quiz App',
            // style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetAll),
      ),
    );
  }
}
