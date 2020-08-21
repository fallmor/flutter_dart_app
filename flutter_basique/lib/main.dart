import 'package:flutter/material.dart'; // permet l'import des Widgets

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Les Widgets basiques',
      theme: new ThemeData(
          primarySwatch: Colors.red
      ), //themeData
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }


}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }

}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Salut'),
        leading: new Icon(Icons.account_circle),
        actions: <Widget>[
          new Icon(Icons.access_alarm),
          new Icon(Icons.golf_course),
          new Icon(Icons.directions_bike),
        ],
        elevation: 10.0,
        centerTitle: true,
      ),
      backgroundColor: Colors.teal,
    );
  }

}