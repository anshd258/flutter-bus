// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import, curly_braces_in_flow_control_structure

import 'package:flutter/material.dart';
import './question.dart';
import './ansd.dart';
import 'else_part.dart';
import 'if_part.dart';

/*void main() {
  runApp(Ma());
}*/
void main() => runApp(Ma());

// ignore: use_key_in_widget_constructors
class Ma extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MaState();
  }
}

class _MaState extends State<Ma> {
  var _questionind = 0;
  var _total = 0;
  void _luma() {
    setState(() {
      _questionind = 0;
      _total = 0;
    });
  }

  void _ans(int score) {
    setState(() {
      _total += score;

      _questionind = _questionind + 1;
      if (_questionind <= 3) {
      } else {
        _questionind = 0;
      }
    });
  }

  @override
  Widget build(BuildContext text) {
    var question = [
      // crated a list of map
      {
        'text': 'what\'s your fav color?',
        'answer': [
          {'textt': 'black', 'score': 20},
          {'textt': 'red', 'socre': 15},
          {'textt': 'green', 'score': 10},
          {'textt': 'blue', 'score': 1}
        ]
      },
      {
        'text': 'wat\'s your fav ranger',
        'answer': [
          {'textt': 'nezuko', 'score': 20},
          {'textt': 'aqua', 'socre': 15},
          {'textt': 'komi san', 'score': 10},
          {'textt': 'zero two', 'score': 1}
        ]
      },
      {
        'text': 'wat\'s your fav manga',
        'answer': [
          {'textt': 'redo of the healer', 'score': 20},
          {'textt': 'eath note', 'socre': 15},
          {'textt': 'demon slayer', 'score': 10},
          {'textt': 'silent voice', 'score': 1}
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(234, 112, 197, 223),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 149, 149, 192),
          title: Center(
            child: Text(
              'FUNCTIONAL TEST',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 83, 46, 20),
                fontWeight: FontWeight.bold,
                wordSpacing: 3,
                letterSpacing: 3,
              ),
            ),
          ),
        ),
        body: _questionind <= 2
            ? ifpart(questions: question, answ: _ans, queid: _questionind)
            : elsepart(
                puss: _luma,
                score: _total,
              ),
      ),
    );
  }
}
