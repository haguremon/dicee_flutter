import 'package:flutter/material.dart';

import 'dart:math'; //数学の定数や関数やランダムを発生させる事ができる

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text('dicee'),
      ),
      body: DicePage(),
    ),
  ));
}

// ignore: use_key_in_widget_constructors
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDiceeNumber = 1;
  int leftDiceeNumber = 1;
  numberUpdata() {
    leftDiceeNumber = Random().nextInt(6) + 1;
    rightDiceeNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                numberUpdata();
              });
            },
            child: Image.asset('images/dice$leftDiceeNumber.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                numberUpdata();
              });
            },
            child: Image.asset('images/dice$rightDiceeNumber.png'),
          ),
        )
      ]),
    );
  }
}
