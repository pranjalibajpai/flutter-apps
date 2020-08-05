import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice=Random().nextInt(6)+1,rightDice=Random().nextInt(6)+1;
  void changeDice(){
    setState(() {
      leftDice = Random().nextInt(6)+1;
      rightDice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDice();
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset('images/dice$rightDice.png'),
              )),
        ],
      ),
    );
  }
}
