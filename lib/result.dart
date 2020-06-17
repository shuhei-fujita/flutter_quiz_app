import 'package:flutter/material.dart';

// このクラスでQuestionの結果画面のwidgetを作成
class Result extends StatelessWidget {

  final int resultScore;

  Result(this.resultScore);

  // getter
  String get resultPhrase {

    String resultText;

    if(resultScore > 20) {
      resultText = 'Your score is Good';
    } else {
      resultText = 'Your score is ${resultScore}';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        )
    );
  }
}
