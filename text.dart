import 'package:flutter/material.dart';

class text extends StatelessWidget {
  String displayText;
  text(this.displayText);
  @override
  Widget build(BuildContext context) {
    return Text(
      displayText,
      style: TextStyle(fontSize: 22),
      textAlign: TextAlign.center,
    );
  }
}
