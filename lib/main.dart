// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_import
import 'package:solana/dto.dart';
import 'package:solana/solana.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';


/*void main() {
  runApp(Ma());
}*/
void main() => runApp(Ma());

class Ma extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MaState();
    GetAccountInfoConfig(
        commitment: Commitment.finalized, encoding: Encoding.jsonParsed);
  }
}

class MaState extends State<Ma> {
  var questionind = 0;
  void ans() {
    setState(() {
      if (questionind < 2) questionind = questionind + 1;
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
        backgroundColor: Color.fromARGB(234, 90, 90, 91),
        appBar: AppBar(
          title: const Text('big tits'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(question[questionind]),
            RaisedButton(
              onPressed: null,
              child: Text('anser1'),
            ),
            Text(question[questionind]),
            TextButton(
              onPressed: () => print('coosen bitch'),
              child: Text('press'),
            ),
            ElevatedButton(
              onPressed: () {
                ans();

                print('cooesn already');
              },
              child: const Text('elavated'),
            ),
            Text(question[questionind]),
            OutlinedButton(
              onPressed: ans,
              child: Text('outlined'),
            )
          ],
        ),
      ),
    );
  }
}
