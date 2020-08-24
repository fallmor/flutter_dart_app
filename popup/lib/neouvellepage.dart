import 'package:flutter/material.dart';

class Nouvellepage extends StatelessWidget {

  Nouvellepage (String title) {
    this.title = title;

  }
  String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text(
            "je suis une nouvelle page",
          textScaleFactor: 2.0,
          textAlign: TextAlign.center,
          style: new TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.teal,

          ),
        ),
      ),
    );
  }
}