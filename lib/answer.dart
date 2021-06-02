import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: RaisedButton(
        elevation: 20,
        color: Colors.cyan[300],
        splashColor: Colors.white,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(
              fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 17),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
