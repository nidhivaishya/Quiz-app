import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Which color symbolizes peace?',
      'answers': [
        {'text': 'Yellow', 'score': 0},
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 0},
        {'text': 'Blue', 'score': 0},
      ],
    },
    {
      'questionText': 'The sun sets in the?',
      'answers': [
        {'text': 'West', 'score': 1},
        {'text': 'East', 'score': 0},
        {'text': 'South', 'score': 0},
        {'text': 'North', 'score': 0},
      ],
    },
    {
      'questionText': 'Which planet is known as the red planet?',
      'answers': [
        {'text': 'Uranus', 'score': 0},
        {'text': 'Jupiter', 'score': 0},
        {'text': 'Pluto', 'score': 0},
        {'text': 'Mars', 'score': 1},
      ],
    },
    {
      'questionText': 'What are the vowels of the English alphabet?',
      'answers': [
        {'text': 'A,B,C,D,E', 'score': 0},
        {'text': 'A,E,I,V,O', 'score': 0},
        {'text': 'A,X,C,V,B', 'score': 0},
        {'text': 'A,E,I,O,U', 'score': 1},
      ],
    },
    {
      'questionText': 'What is the capital of India?',
      'answers': [
        {'text': 'Mumbai', 'score': 0},
        {'text': 'New Delhi', 'score': 1},
        {'text': 'Chennai', 'score': 0},
        {'text': 'Kolkata', 'score': 0},
      ],
    },
    {
      'questionText': 'How many years are there in one Millenium?',
      'answers': [
        {'text': '100 years', 'score': 0},
        {'text': '10 years', 'score': 0},
        {'text': '1,000 years', 'score': 1},
        {'text': '10,1000 years', 'score': 0},
      ],
    },
    {
      'questionText': 'How many letters are there in the English alphabet?',
      'answers': [
        {'text': '26', 'score': 1},
        {'text': '24', 'score': 0},
        {'text': '25', 'score': 0},
        {'text': '27', 'score': 0},
      ],
    },
    {
      'questionText': 'Which month of the year has the least number of days?',
      'answers': [
        {'text': 'September', 'score': 0},
        {'text': 'March', 'score': 0},
        {'text': 'December', 'score': 0},
        {'text': 'February', 'score': 1},
      ],
    },
    {
      'questionText': 'How many colors do we have in a rainbow?',
      'answers': [
        {'text': '8', 'score': 0},
        {'text': '7', 'score': 1},
        {'text': '5', 'score': 0},
        {'text': '6', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is the largest planet in our solar system?',
      'answers': [
        {'text': 'Jupiter', 'score': 1},
        {'text': 'Saturn', 'score': 0},
        {'text': 'Earth', 'score': 0},
        {'text': 'Mars', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    //var aBool = true;
    //aBool = false;

    _totalScore = _totalScore + score; //or use _totalScore += score;

    setState(() {});
    _questionIndex = _questionIndex + 1;
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Basic GK Quiz App',
            style: TextStyle(
                fontFamily: 'Quicksans',
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.cyanAccent, Colors.cyan[600]])),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
