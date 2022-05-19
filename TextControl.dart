import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  @override
  Function clicked;
  TextControl(this.clicked);
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: clicked,
      child: Text('Click to change text'),
    );
  }
}
