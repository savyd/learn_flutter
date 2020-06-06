import 'package:flutter/material.dart';

class StackAndAlign extends StatelessWidget {
  Flexible makeFlexColumn({int flex, Color color}) {
    return Flexible(
      flex: flex,
      child: Container(color: color),
    );
  }

  Flexible makeFlexRow({int flex, List<Widget> widgets}) {
    return Flexible(
      flex: flex,
      child: Row(
        children: widgets,
      ),
    );
  }

  final Container dummyContainerText = Container(
    margin: EdgeInsets.all(10),
    child: Text(
      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,",
      style: TextStyle(fontSize: 20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("12 Stack And Align Widget")),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              this.makeFlexRow(
                flex: 1,
                widgets: <Widget>[
                  this.makeFlexColumn(flex: 1, color: Colors.white),
                  this.makeFlexColumn(flex: 1, color: Colors.black12),
                ],
              ),
              this.makeFlexRow(
                flex: 1,
                widgets: <Widget>[
                  this.makeFlexColumn(flex: 1, color: Colors.black12),
                  this.makeFlexColumn(flex: 1, color: Colors.white),
                ],
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  this.dummyContainerText,
                  this.dummyContainerText,
                  this.dummyContainerText,
                  this.dummyContainerText,
                  this.dummyContainerText,
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: RaisedButton(
              child: Text("My Button"),
              color: Colors.amber,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
