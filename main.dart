// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
//...Ruchi

import 'package:flutter/material.dart';
import './TextControl.dart';
import './text.dart';

void main() {
  runApp(const AssignmentApp());
}

class AssignmentApp extends StatefulWidget {
  const AssignmentApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AssignmentAppState();
  }
}

class AssignmentAppState extends State<AssignmentApp> {
  var _index = 0;
  void resetquiz() {
    setState(() {
      _index = 0;
    });
  }

  void whenClicked() {
    if (_index < textSet.length - 1) {
      setState(() {
        _index++;
      });
    } else {
      resetquiz();
    }
  }

  var textSet = ['Hola!', 'How are you?', 'Some random text :) '];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Container(
              width: double.infinity,
              child: const Text(
                'My first app',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            )),
            body: Container(
              width: double.infinity,
              child: Column(
                children: [
                  text(textSet[_index]),
                  TextControl(whenClicked),
                ],
              ),
            )));
  }
}
