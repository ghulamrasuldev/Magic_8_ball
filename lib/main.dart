import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(Magic8Ball());
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Title(
            color: Colors.blue,
            child: Text(
              'Magic 8 Ball',
            ),
          ),
        ),
        body: Center(
          child: Container(
            child: Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    ball =Random().nextInt(5)+1;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('images/ball$ball.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
