import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answer1() {
    print('answer 1 pressed');
  }

  void answer2() {
    print('answer 2 pressed');
  }

  void answer3() {
    print('answer 3 pressed');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: [
              Text('The question'),
              ElevatedButton(
                child: Text('Answer1'),
                onPressed: answer1,
              ),
              ElevatedButton(
                child: Text('Answer2'),
                onPressed: answer2,
              ),
              ElevatedButton(
                child: Text('Answer3'),
                onPressed: answer3,
              ),
              Text("This is new Text"),
            ],
          )),
    );
  }
}
