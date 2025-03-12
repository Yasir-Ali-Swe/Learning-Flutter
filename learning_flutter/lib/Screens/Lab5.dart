import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// import 'package:flutter/';
class Lab5 extends StatelessWidget {
  final AudioCache audio_player = AudioCache();
  void play_audio(intAudioNumber) {
    audio_player.play("note$intAudioNumber.wav");
  }

  Lab5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => play_audio(1),
                child: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      "Note 1",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "Note 2",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Note 3",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  color: Colors.deepOrange,
                  child: Center(
                    child: Text(
                      "Note 4",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  color: Colors.yellow,
                  child: Center(
                    child: Text(
                      "Note 5",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text(
                      "Note 6",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  color: Colors.deepPurpleAccent,
                  child: Center(
                    child: Text(
                      "Note 7",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
