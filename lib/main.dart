import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void playSound(){
      print('Play sound');
      final player = AudioPlayer();
      await player.setSource(AssetSource('assets/note1.wav'));
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TextButton(
                  child: Container(
                    color: Colors.red,
                    ),
                  onPressed: (){
                    playSound();
                    },
                  ),
                ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}

// Expanded(
// child: TextButton(
// child: Text('second'),
// style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
// onPressed: (){
// playSound();
// },
// )
// )