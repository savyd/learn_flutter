import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnTextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("08 Text Style"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Ini Adalah Text",
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlue,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy,
                decorationColor: Colors.redAccent,
                decorationThickness: 3
              ),
            )
          ],
        ),
      ),
    );
  }
}
