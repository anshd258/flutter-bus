// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

/*void main() {
  runApp(Ma());
}*/
void main() => runApp(Ma());

class Ma extends StatelessWidget {
  @override
  Widget build(BuildContext text) {
    var question = [
      'what\'s your fav caracter?',
      'what\'s your fav animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('big tits'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text('questions'),
            RaisedButton(
              child: Text('anser1'),
              onPressed: null,
            ),
            TextButton(
              onPressed: null,
              child: Text('press'),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('elavated'),
            ),
            OutlinedButton(
              onPressed: null,
              child: Text('outlined'),
            )
          ],
        ),
      ),
    );
  }
}
