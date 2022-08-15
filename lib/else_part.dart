// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class elsepart extends StatelessWidget {
  final VoidCallback test;

  elsepart(this.test);
  @override
  Widget build(BuildContext context) {
    return Center(
        //if statement part 2
        // ignore: duplicate_ignore
        child: TextButton(
      // ignore: sort_child_properties_last
      // ignore: prefer_const_constructors
      // ignore: sort_child_properties_last
      child: Text(
        'test is over close te window',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          color: Color.fromARGB(118, 255, 0, 81),
        ),
      ),
      onPressed: test,
    ));
  }
}
