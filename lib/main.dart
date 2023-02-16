import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void playsound(int number){
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Expanded buildkey({required Color color, required int soundNumber}){
    return Expanded(
      child: TextButton(
        child: Text(''),
        onPressed: () {
          playsound(soundNumber);
        },
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              buildkey(color: Colors.red, soundNumber: 1),
              buildkey(color: Colors.orange, soundNumber: 2),
              buildkey(color: Colors.yellow, soundNumber: 3),
              buildkey(color: Colors.green, soundNumber: 4),
              buildkey(color: Colors.blue, soundNumber: 5),
              buildkey(color: Colors.indigo, soundNumber: 6),
              buildkey(color: Colors.purple, soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
