import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('Ask Me any Question'),
          backgroundColor: Colors.blue,
        ),
        body: MagicBallx(),
      ),
    ),
  );
}

class MagicBallx extends StatefulWidget {
  MagicBallx({Key key}) : super(key: key);

  @override
  _MagicBallxState createState() => _MagicBallxState();
}

class _MagicBallxState extends State<MagicBallx> {
  int ballnumber = 1;
    void ballchange() {
      setState(() {
        ballnumber = Random().nextInt(5) + 1;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              child: FlatButton(
            onPressed: () {
              ballchange();
            },
            child: Image.asset('images/ball$ballnumber.png'),
          ))
        ],
      ),
    );
  }
}
