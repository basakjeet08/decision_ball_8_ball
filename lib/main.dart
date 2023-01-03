import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade800,
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

// Stateful Widget which lets us change the state/images/UI inside it
class _BallAppState extends State<BallApp> {
  // This variable is used to carry the Ball number which needs to be shown
  int ballNo = 1;

  // This function sets a random number to the variable ballNo between 1 to 5
  void setBallNumber() {
    // This function lets the Widget know that the state of it Changed and that it needs to be drawn again
    setState(() {
      // Random function took from flutter math library and it generates a random number between 0-4
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
          child: Image.asset('images/ball$ballNo.png'),
        ),
      ),
    );
  }
}
