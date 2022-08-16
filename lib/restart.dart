// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class restart extends StatelessWidget {
  final VoidCallback brss;
  restart(this.brss);

  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: prefer_const_literals_to_create_immutables
      child: TextButton(
          onPressed: brss,
          child: Text(
            'restart quiz!',
            style: TextStyle(
              color: Color.fromARGB(255, 170, 0, 0),
              backgroundColor: Color.fromARGB(0, 0, 0, 0),
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
