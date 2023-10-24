import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
        title: const Text("Dicee"),
      ),
      body: const MyHome(),
    ),
  ));
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void getRandomNumbers() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    getRandomNumbers();
                  },
                  child: Image.asset("images/dice$leftDiceNumber.png"))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    getRandomNumbers();
                  },
                  child: Image.asset("images/dice$rightDiceNumber.png")))
        ],
      ),
    );
  }
}
