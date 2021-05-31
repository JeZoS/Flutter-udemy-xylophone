//
//
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int number) {
    player.play('assets_note$number.wav');
  }

  Widget buildKey(int number, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(number);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(7, Colors.green),
              buildKey(4, Colors.teal),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
