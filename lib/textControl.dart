import 'dart:html';

import 'package:flutter/material.dart';
import './textOutput.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _text = 'This is My assigment:';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                _text = 'Text is changed';
              });
            },
            child: Text('Change Text')),
        TextOutput(_text)
      ],
    );
  }
}
