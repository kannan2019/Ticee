import 'dart:math';
import 'package:flutter/material.dart';

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  var leftDiceeNumber = 1;

  var rightDiceeNumber = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text('My DICEE'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$leftDiceeNumber.png'),
                  onPressed: () => {
                    setState(() {
                      changeTiceFaces();
                    })
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$rightDiceeNumber.png'),
                  onPressed: () => {
                    setState(() {
                      changeTiceFaces();
                    })
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeTiceFaces() {
    leftDiceeNumber = Random().nextInt(6) + 1;
    rightDiceeNumber = Random().nextInt(6) + 1;
  }
}
