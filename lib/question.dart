import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class uestion extends StatelessWidget {
  final String qna;
  uestion(this.qna);

  @override
  Widget build(BuildContext context) {
    return Text(qna);
  }
}
