// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import './question.dart';

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

    print('chossen one');
  }

  @override
  Widget build(BuildContext text) {
    var question = [
      'what\'s your fav caracter?',
      'what\'s your fav animal',
      'wat\'s your fav manga'
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(234, 95, 255, 151),
        appBar: AppBar(
          title: const Text('big tits'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            uestion(question[_questionind]),
            RaisedButton(
              onPressed: null,
              child: Text('anser1'),
            ),
            TextButton(
              onPressed: () => print('coosen bitch'),
              child: Text('press'),
            ),
            ElevatedButton(
              onPressed: () {
                _ans();

                print('cooesn already');
              },
              child: const Text('elavated'),
            ),
            OutlinedButton(
              onPressed: _ans,
              child: Text('outlined'),
            )
          ],
        ),
      ),
    );
  }
}
