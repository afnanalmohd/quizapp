import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  ///define the variable //
  final String answerText; // text for answer
  final Function() x;


  ///constructor ///
  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      ///the button  //

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // put her the style of buttom
          backgroundColor: Color(0XFFBCD5B8),
        ),
        child: Text(answerText, style: TextStyle(fontSize: 20)),
        // Respond to button press
        onPressed: x ,
      ),
    );
  }
}
