import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {});
    _questionIndex = (_questionIndex + 1) % 3;

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite book?'
    ];

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
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
