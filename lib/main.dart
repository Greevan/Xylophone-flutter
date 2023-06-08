import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(int note, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: color,
          padding: const EdgeInsets.all(16.0),
        ),
        onPressed: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio("assets/note$note.wav"),
            autoStart: true,
            showNotification: true,
          );
        },
        child: const Text(''),
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
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.lightBlueAccent),
              buildKey(7, Colors.purple),
              // THIS IS IMPLEMENTATION WITHOUT FUNCTION TYPE 3
              // Expanded(
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //       foregroundColor: Colors.white,
              //       backgroundColor: Colors.orange,
              //       padding: const EdgeInsets.all(16.0),
              //     ),
              //     onPressed: () {
              //       PlaySound(2);
              //     },
              //     child: const Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //       foregroundColor: Colors.white,
              //       backgroundColor: Colors.yellow,
              //       padding: const EdgeInsets.all(16.0),
              //     ),
              //     onPressed: () {
              //       PlaySound(3);
              //     },
              //     child: const Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //       foregroundColor: Colors.white,
              //       backgroundColor: Colors.green,
              //       padding: const EdgeInsets.all(16.0),
              //     ),
              //     onPressed: () {
              //       PlaySound(4);
              //     },
              //     child: const Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //       foregroundColor: Colors.white,
              //       backgroundColor: Colors.teal,
              //       padding: const EdgeInsets.all(16.0),
              //     ),
              //     onPressed: () {
              //       PlaySound(5);
              //     },
              //     child: const Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //       foregroundColor: Colors.white,
              //       backgroundColor: Colors.blue,
              //       padding: const EdgeInsets.all(16.0),
              //     ),
              //     onPressed: () {
              //       PlaySound(6);
              //     },
              //     child: const Text(''),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     style: TextButton.styleFrom(
              //       foregroundColor: Colors.white,
              //       backgroundColor: Colors.purple,
              //       padding: const EdgeInsets.all(16.0),
              //     ),
              //     onPressed: () {
              //       PlaySound(7);
              //     },
              //     child: const Text(''),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
