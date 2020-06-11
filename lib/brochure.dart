import 'package:flutter/material.dart';

class Brochure extends StatefulWidget {
  @override
  _BrochureState createState() => _BrochureState();
}

class _BrochureState extends State<Brochure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
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
                    Text('test'),
                  ],
                ),
              ),
          ),
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text('test'),
                  ],
                ),
              ),
            ),
          ]
      )
    );
  }
}