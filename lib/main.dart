import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Center(child: Text("Decision Making App")),
      ),
      body: decide(),
    ),
  ));
}

class decide extends StatefulWidget {
  @override
  _decideState createState() => _decideState();
}

class _decideState extends State<decide> {
  int num = 1;

  void ball_clicked() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset("images/ball$num.png"),
        onPressed: () {
          print("clicked!!");
          ball_clicked();
        },
      ),
    );
  }
}
