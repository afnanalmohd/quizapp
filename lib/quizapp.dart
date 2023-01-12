import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class QuizApp extends StatelessWidget {
  ///constructor ///
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int S) answerQuestion;

  ///initialize for variable //

  QuizApp(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      /// to change the index ///

      Question(question[questionIndex]['questionText'].toString()),

      ///to define the answer ///
      ...(question[questionIndex]['answers'] as List<Map<String,Object >>)
          .map((answer) {
        return Answer(
            () => answerQuestion( int.parse(answer['score'].toString())),
            answer['text'].toString());
      }).toList()
    ]);
  }
}
