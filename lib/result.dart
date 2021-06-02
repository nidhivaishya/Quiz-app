import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 10) {
      resultText = 'Score: ' +
          resultScore.toString() +
          '/10' +
          '\nWoahh! You\'re too brilliant!';
    } else if (resultScore < 10 && resultScore >= 5) {
      resultText =
          'Score: ' + resultScore.toString() + '/10' + '\nGood! Keep it up!';
    } else if (resultScore < 5 && resultScore >= 1) {
      resultText =
          'Score: ' + resultScore.toString() + '/10' + '\nYou can do better!';
    } else if (resultScore == 0) {
      resultText = 'Score: ' +
          resultScore.toString() +
          '/10' +
          '\nBetter luck next time!';
    }
    // else {
    // resultText = 'You are tooooo goooood!!!';
    //}
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway'),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway'),
            ),
            textColor: Colors.cyan,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
