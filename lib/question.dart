// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class uestion extends StatelessWidget {
  final String qna;
  uestion(this.qna);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(3),
      child: Text(
        //giving questions
        qna,
        style: TextStyle(fontSize: 10),
        textAlign: TextAlign.center,
      ),
    );
  }
}
