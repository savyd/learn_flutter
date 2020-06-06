import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LearnList extends StatefulWidget {
  @override
  _LearnListState createState() => _LearnListState();
}

class _LearnListState extends State<LearnList> {
  final TextStyle myTextStyle = TextStyle(fontSize: 30);

  final List<Widget> widgets = [];

  int counter = 1;

  void add() {
    setState(() {
      widgets.add(Text(
        "Date ke-" + counter.toString(),
        style: myTextStyle,
      ));
      counter++;
    });
  }

  void remove() {
    setState(() {
      widgets.removeLast();
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("09 List And List View"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                child: Text("ADD"),
                onPressed: add,
              ),
              RaisedButton(
                child: Text("REMOVE"),
                onPressed: remove,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: this.widgets,
          )
        ],
      ),
    );
  }
}
