import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber, String name}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
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
              buildKey(soundNumber: 1, color: Colors.red, name: 'Sa'),
              buildKey(soundNumber: 2, color: Colors.orange, name: 'Re'),
              buildKey(soundNumber: 3, color: Colors.yellow, name: 'Ga'),
              buildKey(soundNumber: 4, color: Colors.green, name: 'Ma'),
              buildKey(soundNumber: 5, color: Colors.blue, name: 'Pa'),
              buildKey(soundNumber: 6, color: Colors.indigo, name: 'Dha'),
              buildKey(soundNumber: 7, color: Colors.purple, name: 'Ni'),
            ],
          ),
        ),
      ),
    );
  }
}
