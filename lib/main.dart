import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('lib/assets/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('lib/assets/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
