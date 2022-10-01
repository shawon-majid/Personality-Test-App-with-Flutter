import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback reset;

  Result(this.totalScore, this.reset);

  String get resultPhrase {
    String resultText = 'your score is $totalScore';

    if (totalScore <= 20) {
      resultText = 'You\'re such a lovely, cute & innocent person';
    } else {
      resultText = 'You\'re such a creative & hardworking person';
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
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Helvetica',
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: reset, child: Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
