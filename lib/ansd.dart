// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ans extends StatelessWidget {
  final VoidCallback selectli; //pointer to function
  final String some_sit; //list of strings from main .dart
  ans(this.selectli, this.some_sit); //constructor
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      // ignore: sort_child_properties_last
      child: TextButton(
        onPressed: selectli, //calling te function pointer
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(3),
          primary: Color.fromARGB(255, 70, 59, 86),
          textStyle: const TextStyle(fontSize: 15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          backgroundColor: Color.fromARGB(241, 11, 255, 109),
        ),
        child: Text(some_sit), //list of string passing to text field
      ),
      margin: EdgeInsets.all(3),
    );
  }
}
