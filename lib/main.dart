// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:test_app/ans.dart';
import 'package:test_app/if_part.dart';
import './question.dart';
import './ansd.dart';

/*void main() {
  runApp(Ma());
}*/
void main() => runApp(Ma());

class Ma extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MaState();
  }
}

class _MaState extends State<Ma> {
  var _questionind = 0;
  void _ans() {
    setState(() {
      if (_questionind < 2)
        _questionind = _questionind + 1;
      else
        _questionind = 0;
    });
  }

  @override
  Widget build(BuildContext text) {
    var question = [
      // crated a list of map
      {
        'text': 'what\'s your fav color?',
        'answer': [
          'black',
          'red',
          'green',
        ]
      },
      {
        'text': 'wat\'s your fav ranger',
        'answer': [
          'ninja',
          'punja',
          'aruko',
          'nexuko',
        ]
      },
      {
        'text': 'wat\'s your fav manga',
        'answer': [
          'solo leveling',
          'demon slaeyr',
          'full metal alcamist',
          'erased',
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(234, 202, 202, 202),
          appBar: AppBar(
            title: const Text(
              'FUNCTIONAL TEST',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(193, 184, 166, 153),
              ),
            ),
          ),
          body: _questionind < 2
              ? ifpart(questions: question, answer: _ans, queid: _questionind)
              : elsepart(_ans)),
    );
  }
}
