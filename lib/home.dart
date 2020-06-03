import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moa_corona_examen_applicatie/choose_location.dart';
import 'package:moa_corona_examen_applicatie/corona_class.dart';
import 'package:moa_corona_examen_applicatie/corona_rules.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Text('corona regels', style: TextStyle(color: Colors.white),),
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Coronarules()));}, //navigeert naar corona_rules.dart
              ),
            ),
            Expanded(
            child: FlatButton(
              child: Text('ander land', style: TextStyle(color: Colors.white),),
              onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => ChooseLocation()));}, //navigeert naar choose_location.dart
              ),
            ),
          ],
        ),
      ),
    );
  }
}