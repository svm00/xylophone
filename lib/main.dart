import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildkey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: SizedBox.shrink(),
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
              buildkey(Colors.red, 1),
              buildkey(Colors.orange, 2),
              buildkey(Colors.yellow, 3),
              buildkey(Colors.green, 4),
              buildkey(Colors.teal, 5),
              buildkey(Colors.blue, 6),
              buildkey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
