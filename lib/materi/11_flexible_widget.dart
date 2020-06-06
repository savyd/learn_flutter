import 'package:flutter/material.dart';

class LearnFlexibleWidget extends StatelessWidget {
  EdgeInsets defaultMargin = EdgeInsets.all(5);

  Flexible makeFlexContainer(int flex, Color color) {
    return Flexible(
      flex: flex,
      child: Container(
        margin: defaultMargin,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("11 Flexible Widget"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                makeFlexContainer(1, Colors.greenAccent),
                makeFlexContainer(1, Colors.pinkAccent),
                makeFlexContainer(1, Colors.orangeAccent),
              ],
            ),
          ),
          makeFlexContainer(2, Colors.lightBlue),
          makeFlexContainer(1, Colors.red),
        ],
      ),
    );
  }
}
