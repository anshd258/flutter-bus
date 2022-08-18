// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class elsepart extends StatelessWidget {
  final VoidCallback puss;
  final score;

  String get parase {
    var ressultext = 'you did it you are innocent ! score = ${score}';

    if (score >= 10) ressultext = 'you have a dark-side buddy${score}';

    return ressultext;
  }

  elsepart({required this.puss, this.score});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Center(
            //if statement part 2
            // ignore: duplicate_ignor
            // ignore: sort_child_properties_last
            // ignore: prefer_const_constructors
            // ignore: sort_child_properties_last
            child: Column(children: <Widget>[
          Text(
            parase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(118, 255, 0, 81),
              height: 1.5,
              letterSpacing: 0.3,
            ),
          ),
          TextButton(
            onPressed: puss,
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                height: 1.5,
                fontSize: 15,
                color: Color.fromARGB(0, 3, 3, 219),
              ),
            ),
            child: Text('RESTART'),
          ),
        ])));
  }
}
