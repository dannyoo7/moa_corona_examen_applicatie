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
        title: Text('over mij'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}