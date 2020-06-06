import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnonymousMethod extends StatefulWidget {
  @override
  _AnonymousMethodState createState() => _AnonymousMethodState();
}

class _AnonymousMethodState extends State<AnonymousMethod> {
  String message = "OFF";

  void tekanTombol() {
    setState(() => message = message == "ON" ? "OFF" : "ON");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("06 Anonymous Method"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              message,
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text("Tekan Saya"),
              onPressed: tekanTombol,
            )
          ],
        ),
      ),
    );
  }
}
