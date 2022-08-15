import 'package:flutter/material.dart';

class uestion extends StatelessWidget {
  final String qna;
  uestion(this.qna);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        //giving questions
        qna,
        style: TextStyle(fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }
}
