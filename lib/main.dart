import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(String fileName) {
    final player = AudioCache();
    player.play(fileName);
  }

  Center animalRight(
      {String animalName,
      String imagePath,
      Color border,
      Color background,
      String fileName}) {
    return Center(
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
            color: background,
            border: Border.all(width: 3.0, color: border),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: FlatButton(
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                child: Text(
                  animalName.toUpperCase(),
                  style: TextStyle(fontFamily: 'AmaticSC', fontSize: 24),
                ),
                top: 15,
                left: 40,
              ),
              Positioned(
                top: -40,
                right: 50,
                child: Image.asset(
                  imagePath,
                  height: 80.0,
                ),
              )
            ],
          ),
          onPressed: () {
            playSound(fileName);
          },
        ),
      ),
    );
  }

  Center animalLeft(
      {String animalName,
      String imagePath,
      Color border,
      Color background,
      String fileName}) {
    return Center(
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
            color: background,
            border: Border.all(width: 3.0, color: border),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: FlatButton(
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                child: Text(
                  animalName.toUpperCase(),
                  style: TextStyle(fontFamily: 'AmaticSC', fontSize: 24),
                ),
                top: 15,
                right: 40,
              ),
              Positioned(
                top: -40,
                left: 50,
                child: Image.asset(
                  imagePath,
                  height: 80.0,
                ),
              )
            ],
          ),
          onPressed: () {
            playSound(fileName);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                animalRight(
                    animalName: 'frog',
                    imagePath: 'images/frog.png',
                    background: Colors.green[100],
                    border: Colors.green[400],
                    fileName: 'frog.wav'),
                animalLeft(
                    animalName: 'pig',
                    imagePath: 'images/pig.png',
                    background: Colors.pink[100],
                    border: Colors.pink[400],
                    fileName: 'pig.wav'),
                animalRight(
                    animalName: 'sheep',
                    imagePath: 'images/sheep.png',
                    background: Colors.blue[100],
                    border: Colors.blue[400],
                    fileName: 'sheep.wav'),
                animalLeft(
                    animalName: 'hen',
                    imagePath: 'images/hen.png',
                    background: Colors.yellow[100],
                    border: Colors.yellow[400],
                    fileName: 'hen.wav'),
                animalRight(
                    animalName: 'cow',
                    imagePath: 'images/cow.png',
                    background: Colors.purple[100],
                    border: Colors.purple[400],
                    fileName: 'cow.wav'),
                animalLeft(
                    animalName: 'goat',
                    imagePath: 'images/goat.png',
                    background: Colors.greenAccent[100],
                    fileName: 'goat.wav',
                    border: Colors.green),
                animalRight(
                    animalName: 'rooster',
                    imagePath: 'images/rooster.png',
                    background: Colors.orange[100],
                    border: Colors.orange[400],
                    fileName: 'rooster.wav')
              ],
            ),
          )),
    );
  }
}
