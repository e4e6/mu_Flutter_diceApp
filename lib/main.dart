import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    DiceMu(),
  );
}

class DiceMu extends StatefulWidget {
  @override
  _DiceMuState createState() => _DiceMuState();
}

class _DiceMuState extends State<DiceMu> {
  void buttonFunc() {
    setState(() {
      dicenumberA = 1 + Random().nextInt(6);
      dicenumberB = 1 + Random().nextInt(6);
      print(dicenumberA);
    });
  }

  int dicenumberA = 1;
  int dicenumberB = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Dice Mou")),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            buttonFunc();
          },
          child: const Icon(Icons.group_work),
        ),
        body: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'images/dice$dicenumberA.png',
                    gaplessPlayback: true,
                  ),
                )),
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'images/dice$dicenumberB.png',
                    gaplessPlayback: true,
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
