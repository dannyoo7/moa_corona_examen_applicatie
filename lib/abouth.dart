import 'package:flutter/material.dart';

class Abouth extends StatefulWidget {
  @override
  _AbouthState createState() => _AbouthState();
}

class _AbouthState extends State<Abouth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('abouth'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text("voornaam : danny"),
                      Text("achternaam : lanssink"),
                      Text("leeftijd : 18"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text("opleiding",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("opleiding : applicatie ontwikelaar"),
                      Text("opleidings nivea : 4"),
                      Text("slb,er : bert van de woord")
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text("programeer talen" ,style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("web development : html , javascript , css , mvc"),
                      Text("windows development : c# , python"),
                      Text("mobile development : flutter , dart"),
                    ],
                  ),
                ),
              ),
            ]
        )
    );
  }
}