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
        backgroundColor: Colors.blue[900],
        centerTitle: false,
        title: Text(
          'Ask Me Anything',
        ),
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
  int ballNumber = 0;

  void updateBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    updateBallNumber();
    return Container(
      color: Colors.blue,
      child: Center(
        child: FlatButton(
          onPressed: updateBallNumber,
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
