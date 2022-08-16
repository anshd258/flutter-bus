// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'restart.dart';

class elsepart extends StatelessWidget {
  final Function test;
  final VoidCallback puss;
  final score;

  String get parase {
    var ressultext = 'you did it you are inocent ! score = ${score}';

    if (score >= 10) ressultext = 'you ave a dark-side buddy${score}';

    return ressultext;
  }

  elsepart({required this.test, required this.puss, this.score});
  @override
  Widget build(BuildContext context) {
    return Center(
        //if statement part 2
        // ignore: duplicate_ignor
        // ignore: sort_child_properties_last
        // ignore: prefer_const_constructors
        // ignore: sort_child_properties_last
        child: Column(children: <Widget>[
      Container(
        child: Text(
          parase,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(118, 255, 0, 81),
            height: 3,
            letterSpacing: 0.3,
          ),
        ),
      ),
      Expanded(child: restart(puss))
    ]));
  }
}
