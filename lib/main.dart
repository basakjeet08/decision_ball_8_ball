import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: const Text('Ask Me Anything'),
          ),
          backgroundColor: Colors.blue,
          body: const BallApp(),
        ),
      ),
    );

class BallApp extends StatefulWidget {
  const BallApp({Key? key}) : super(key: key);

  @override
  State<BallApp> createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int ballNo = 1;

  void setBallNumber(){
    setState(() {
      ballNo = Random().nextInt(5) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setBallNumber();
          },
          child: Image.asset(
            'images/ball$ballNo.png',
          ),
        ),
      ),
    );
  }
}
