import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedAndGesture extends StatefulWidget {
  @override
  _AnimatedAndGestureState createState() => _AnimatedAndGestureState();
}

class _AnimatedAndGestureState extends State<AnimatedAndGesture> {
  Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("10 Animated And Gestured"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {}),
          child: AnimatedContainer(
            color: Color.fromARGB(255, _random.nextInt(256), _random.nextInt(256),
                _random.nextInt(256)),
            duration: Duration(seconds: 1),
            width: 50.0 + _random.nextInt(101),
            height: 50.0 + _random.nextInt(101),
          ),
        ),
      ),
    );
  }
}
