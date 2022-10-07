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
        {'text': 'Black', 'score': 3},
        {'text': 'Red', 'score': 6},
        {'text': 'Blue', 'score': 4},
        {'text': 'White', 'score': 9},
        {'text': 'I don\'t know', 'score': 5},
      ],
    },
    {
      'questionText': 'You\'re waiting in a long line:',
      'answers': [
        {'text': 'You chat with the person next to you.', 'score': 12},
        {'text': 'You keep your eyes on your phone', 'score': 5},
      ],
    },
    {
      'questionText': 'You feel most energetic and focused:',
      'answers': [
        {'text': 'In the morning', 'score': 8},
        {'text': 'During the afternoon and early evening', 'score': 12},
        {'text': 'Late at night', 'score': 5},
        {'text': 'Never', 'score': 1},
      ],
    },
    {
      'questionText': 'Your desk is usually',
      'answers': [
        {'text': 'Super Organized', 'score': 10},
        {'text': 'A jumble of everything you\'re working on', 'score': 8},
      ],
    },
    {
      'questionText': 'What do you like most?',
      'answers': [
        {'text': 'CP', 'score': 6},
        {'text': 'Development', 'score': 9},
        {'text': 'Playing', 'score': 12},
        {'text': 'Reading', 'score': 6},
        {'text': 'Partying', 'score': 12},
      ],
    },
    {
      'questionText': 'Draw a Q on your forehead',
      'answers': [
        {
          'text': 'You put the tail of the Q towards your left eye',
          'score': 12
        },
        {
          'text': 'You put the tail of the Q towards your right eye',
          'score': 8
        },
      ],
    },
    {
      'questionText': 'When you find something really funny, you usually give',
      'answers': [
        {'text': 'A big, appreciative laugh', 'score': 10},
        {'text': 'A laugh, but not a loud one', 'score': 8},
        {'text': 'A quite chuckle', 'score': 7},
        {'text': 'A sheepish smile', 'score': 5},
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
            'Personality Test',
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
