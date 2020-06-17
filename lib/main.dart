import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;
  var _totalScroe = 0;

  static const _questions = [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Yellow', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Yellow', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Yellow', 'score': 3}
      ],
    },
  ];

  void _answerQuestion(int scroe) {

    _totalScroe += scroe;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if(_questionIndex < _questions.length) {
      print('We have more questions!');
    }else{
      print('No more questions!');
    }

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App'),),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions,)
            : Result(_totalScroe),
      ),
    );
  }
}
