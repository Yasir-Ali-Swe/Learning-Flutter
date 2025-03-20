import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learning Flutter",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final AudioPlayer audioPlayer = AudioPlayer();
  void playSound(int soundNumber) {
    audioPlayer.play(AssetSource('audio/note$soundNumber.wav'));
  }

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                playSound(1);
              },
              child: Container(
                color: Colors.redAccent,
                child: Center(
                  child: Text(
                    "Note 1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playSound(2);
              },
              child: Container(
                color: Colors.greenAccent,
                child: Center(
                  child: Text(
                    "Note 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playSound(3);
              },
              child: Container(
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    "Note 3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playSound(4);
              },
              child: Container(
                color: Colors.yellowAccent,
                child: Center(
                  child: Text(
                    "Note 4",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playSound(5);
              },
              child: Container(
                color: Colors.purpleAccent,
                child: Center(
                  child: Text(
                    "Note 5",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playSound(6);
              },
              child: Container(
                color: Colors.pinkAccent,
                child: Center(
                  child: Text(
                    "Note 6",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                playSound(7);
              },
              child: Container(
                color: Colors.orangeAccent,
                child: Center(
                  child: Text(
                    "Note 7",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
