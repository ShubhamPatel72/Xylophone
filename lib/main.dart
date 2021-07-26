import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(xylophoneapp());
}

class xylophoneapp extends StatelessWidget {
  @override
  Expanded buildwiget({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'XyloPhone',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildwiget(color: Colors.red, number: 1),
              buildwiget(color: Colors.orange, number: 2),
              buildwiget(color: Colors.yellow, number: 3),
              buildwiget(color: Colors.green, number: 4),
              buildwiget(color: Colors.teal, number: 5),
              buildwiget(color: Colors.blue, number: 6),
              buildwiget(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
