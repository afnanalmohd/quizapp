import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  /// variable ///

  final Function() Q;
  final resultasScore;
  ///initialize THE constructor //

  Result(this.Q,this.resultasScore);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 70, top: 30),
            child: Text(
              "You Solve All Question ",
              style: TextStyle(fontSize: 25),
            )),
        Directionality(
          textDirection: TextDirection.rtl,
          child: ElevatedButton.icon(
            // Respond to button press
            onPressed: Q,

            icon: Icon(Icons.arrow_back, size: 30),
            label: Text("Let's Start Again"),
            style: ElevatedButton.styleFrom(
                primary: Color(0XFFBCD5B8),
                // alignment:Alignment.topRight
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
          ),
        ),
      ],
    );
  }
}
