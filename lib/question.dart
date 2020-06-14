import 'package:flutter/material.dart';

// Question textviewをこのclassで生成
class Question extends StatelessWidget {

  // finalは一度値が代入されたら，変更不可
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
