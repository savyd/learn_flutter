import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateWidget extends StatefulWidget {
  @override
  _StateWidgetState createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  int number = 0;

  void tambahBilangan() => setState(() => number++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Satateful Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number.toString(),
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text("Tambah Bilangan"),
              onPressed: tambahBilangan,
            )
          ],
        ),
      ),
    );
  }
}
