import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            'Ask me anything',
            style: TextStyle(letterSpacing: 2.5),
          ),
        ),
        elevation: 0,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballValue = 1;

  void changeBall() {
    setState(() {
      ballValue = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(30.0),
      child: Center(
        child: FlatButton(
          padding: EdgeInsets.all(16.0),
          onPressed: () {
            changeBall();
          },
          child: Image.asset('images/ball$ballValue.png'),
        ),
      ),
    );
  }
}
