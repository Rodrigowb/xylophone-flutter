import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void playSound (int fileNumber) {
      final player = AudioCache();
      player.play('note$fileNumber.wav');
    }

    Expanded sectionComponent(Color colorProperty, int soundNumber){
      return Expanded(
        flex: 1,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Container(
            color: colorProperty,
          ),
          onPressed: (){
            playSound(soundNumber);
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            sectionComponent(Colors.red, 1),
            sectionComponent(Colors.blue, 2),
            sectionComponent(Colors.green, 3),
            sectionComponent(Colors.yellow, 4),
            sectionComponent(Colors.brown, 5),
            sectionComponent(Colors.amber, 6),
            sectionComponent(Colors.lightBlueAccent, 7),
          ]
        ),
      ),
    );
  }
}
