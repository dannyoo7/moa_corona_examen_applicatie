import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moa_corona_examen_applicatie/home.dart';
class Coronarules extends StatefulWidget {
  @override
  _CoronarulesState createState() => _CoronarulesState();
}

class _CoronarulesState extends State<Coronarules> {
  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Text('terug', style: TextStyle(color: Colors.white),),
                onPressed: (){
                  void initState(){
                    super.initState();
                    SystemChrome.setPreferredOrientations([
                      DeviceOrientation.portraitUp,
                      DeviceOrientation.portraitDown,
                    ]);
                  }
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Home()));}, //navigeert naar corona_rules.dart
              ),
            ),
          ],
        ),
      ),
    );
  }
}