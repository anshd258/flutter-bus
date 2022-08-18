import 'package:flutter/material.dart';
import 'ansd.dart';
import 'question.dart';

class ifpart extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final queid;
  final Function answ;

  ifpart({required this.questions, required this.answ, required this.queid});

  @override
  Widget build(BuildContext context) {
    return Column(
      //if statement part 1
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        uestion(questions[queid]['text']!
            as String), //sending list id (_questionind) and key 'text'to uestion constructor in question.dart
        ...(questions[queid]['answer'] as List<
                Map<String,
                    Object>>) // creating a map of list wic olds a list and sending it to ans function in ansd.dart
            .map((answers) {
          return ansh(
              () =>
                  answ(answers['score'] as int), //created te anonaymus function

              answers['textt']
                  as String); // sending a list to te constructor wic
        }).toList(),
      ],
    );
  }
}
