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
          title: Text('big tits'),
        ),
        body: Column(
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
              child: Text('elavated'),
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
