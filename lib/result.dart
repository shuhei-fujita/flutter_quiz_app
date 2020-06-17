import 'package:flutter/material.dart';

// このクラスでQuestionの結果画面のwidgetを作成
class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  // getter
  String get resultPhrase {

    String resultText;

    if(resultScore > 100) {
      resultText = 'Your score is Good';
    } else {
      resultText = 'Your score is ${resultScore}';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              child: Text('Restart'),
              onPressed: resetHandler,
            ),
          ],
        )
    );
  }
}
