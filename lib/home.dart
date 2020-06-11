import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moa_corona_examen_applicatie/abouth.dart';
import 'package:moa_corona_examen_applicatie/brochure.dart';
import 'package:moa_corona_examen_applicatie/choose_location.dart';
import 'package:moa_corona_examen_applicatie/corona_class.dart';
import 'package:moa_corona_examen_applicatie/corona_rules.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var land = 'nederland';
  var dead = '6.031';
  var infected = '47.903';
  var recovered = 'niet-bekend';
  Map data = {};
  List<dynamic> datalist = List<dynamic>();
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(datalist);
    bool received = false;
    print(data);
    if(data != null){ received = true; datalist = data.values.toList();}
    if(received == true){
      land = datalist[2].toString();
      dead = datalist[0].toString();
      recovered = datalist[1].toString();
      infected = datalist[3].toString();
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded( //lands
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(child: Text('land',textAlign: TextAlign.center,),),
                    Expanded(child: Text('$land',textAlign: TextAlign.center,),),
                  ],
                ),
              ),
          ),
          Expanded( //besmettingen
            child: Column(
              children: <Widget>[
                Expanded(child: Text('besmettingen'),),
                Expanded(child: Text('$infected'),),
              ],
            ),
          ),
          Expanded( //sterf gevallen
            child: Column(
              children: <Widget>[
                Expanded(child: Text('sterf gevallen'),),
                Expanded(child: Text('$dead'),),
              ],
            ),
          ),
          Expanded( //herstelden
            child: Column(
              children: <Widget>[
                Expanded(child: Text('herstelden'),),
                Expanded(child: Text('$recovered'),),
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        child: Text('abouth'),
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Abouth()));
                        }
                    ),
                    FlatButton(
                        child: Text('brochure'),
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Brochure()));
                        }
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}