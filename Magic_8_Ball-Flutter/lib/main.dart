import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.teal,
        ),
        body: MagicBallPage(),
      ),
    ),
  );
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = 1 + Random().nextInt(5); // 1 - 6
      rightDiceNumber = 1 + Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/ball$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
