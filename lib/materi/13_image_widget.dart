import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String assetsImage = "images/naruto_and_hinata.png";
  final String urlImage =
      "https://vignette.wikia.nocookie.net/naruto/images/0/09/Naruto_newshot.png/revision/latest?cb=20170621101134";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("13 Image Widget"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Image(
                image: NetworkImage(urlImage),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Image(
                image: AssetImage(assetsImage),
                fit: BoxFit.contain,
              ),
            ),
          ],
        )
      ),
    );
  }
}
