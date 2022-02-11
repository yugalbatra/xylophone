import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}


class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget key(Color color,int sound) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(sound);
          },
        ),
      );
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              key(Colors.red,1),
              key(Colors.orange,2),
              key(Colors.yellow,3),
              key(Colors.green,4),
              key(Colors.green[900],5),
              key(Colors.blue,6),
              key(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}