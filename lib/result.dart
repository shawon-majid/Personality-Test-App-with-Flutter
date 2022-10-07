import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback reset;

  Result(this.totalScore, this.reset);

  String get resultPhrase {
    String resultText = 'your score is $totalScore';

    if (totalScore >= 36 && totalScore <= 49) {
      resultText =
          'You are a shy worrier, somewhat introverted, kind, considerate & understanding';
    } else if (totalScore >= 50 && totalScore <= 63) {
      resultText =
          'You are introverted extrovert, Others see you as fresh, lively, charming and interesting';
    } else {
      resultText =
          'You are very energetic, have so much positive powers and people love you to see as center of the attention';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          TextButton(
              onPressed: reset,
              child: Text(
                'Restart Quiz!',
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
