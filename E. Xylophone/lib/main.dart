import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp(),);
}
class XylophoneApp extends StatelessWidget {

  void playSound(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildButton({Color color,int noteNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(noteNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(color:Colors.pink, noteNumber: 1),
              buildButton(color:Colors.red, noteNumber: 2),
              buildButton(color:Colors.orange, noteNumber: 3),
              buildButton(color:Colors.purpleAccent, noteNumber: 4),
              buildButton(color:Colors.green, noteNumber: 5),
              buildButton(color:Colors.blue, noteNumber: 6),
              buildButton(color:Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
