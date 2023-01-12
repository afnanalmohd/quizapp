import 'package:flutter/material.dart';



class Question extends StatelessWidget {

 ///define the variable ///
  final String questionText;

  ///constructor ////
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child:Text(
            questionText,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
    );
  }
}