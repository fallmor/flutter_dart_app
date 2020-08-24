import 'package:flutter/material.dart';
import 'neouvellepage.dart';
class Body extends StatefulWidget {

  @override
  _BodyState createState() => new _BodyState();

}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
          color: Colors.teal,
          textColor: Colors.white,
          child: new Text(
              "Appuyez moi",
            style: new TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20.0
            ),
          ),

          onPressed: versNouvellePage),

    );
    }
    void snack() {
      SnackBar snackBar = new SnackBar(
          content: new Text(
              "je suis une snackbar",
            textScaleFactor: 2,
          ),
          duration: new Duration(seconds: 5)
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
    Future<Null> alerte() async {
      return showDialog(
          context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
            return new AlertDialog(
              title: new Text("Ceci est une alerte", textScaleFactor: 1.5,),
              content: new Text("Modou nous avons un probleme avec notre appli, voulez vous continuer"),
              contentPadding: EdgeInsets.all(5.0),
              actions: <Widget>[
                new FlatButton(
                    onPressed: () {
                      print ("Abort");
                      Navigator.pop(context);
                    },
                    child: new Text("Annuler", style: new TextStyle(color: Colors.red))
          ),
                new FlatButton(
                    onPressed: () {
                      print("proceed");
                      Navigator.pop(context);
                    },
                    child: new Text("continuer", style: new TextStyle(color: Colors.blue))
                ),
                new FlatButton(
                    onPressed: () {
                      print("test");
                      Navigator.pop(context);
                    }, 
                    child: new Text("tester", style: new TextStyle(color: Colors.green),))
              ],

            );

      }
      );
    }
    void versNouvellePage() {
      Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) {
        return new Nouvellepage("la seconde page de Mor");
      }));
    }
  }
