import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Quiz App'),),
      body: Column(
        children: [
          Text('The Question'),
          RaisedButton(
            child: Text('Answer 1'),
          ),
          RaisedButton(
            child: Text('Answer 2'),
          ),
          RaisedButton(
            child: Text('Answer 3'),
          ),
          RaisedButton(
            child: Text('Answer 4'),
          ),
        ],
      ),
    ),);
  }
}
