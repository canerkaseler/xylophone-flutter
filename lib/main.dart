import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Play Xylophone',
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildChild(1, Colors.red),
                  buildChild(2, Colors.orange),
                  buildChild(3, Colors.yellow),
                  buildChild(4, Colors.green),
                  buildChild(5, Colors.teal),
                  buildChild(6, Colors.blue),
                  buildChild(7, Colors.blue[900]),
                ],
              )),
        ));
  }

  void playMusic(int buttonNumber) {
    final player = AudioCache();
    player.play('note$buttonNumber.wav');
  }

  Expanded buildChild(int orderNumber, Color color){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playMusic(orderNumber);
        },
        color: color,
      ),
    );
  }
}
