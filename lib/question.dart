import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class uestion extends StatelessWidget {
  final String qna;
  uestion(this.qna);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        qna,
        style: TextStyle(fontSize: 15),
        textAlign: TextAlign.center,
      ),
    );
  }
}
