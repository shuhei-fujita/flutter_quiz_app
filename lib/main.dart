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

  static const _questions = [
    {
      'questionText': 'What is your favorite color?',
      'answers': ['Red', 'Blue', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Tiger'],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['Ramen', 'Sushi', 'Soba'],
    },
  ];

  void _answerQuestion() {

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
            : Result(),
      ),
    );
  }
}
