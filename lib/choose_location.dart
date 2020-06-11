import 'package:flutter/material.dart';
import 'package:moa_corona_examen_applicatie/corona_class.dart';
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<coronaInfo> coronaData = List<coronaInfo>();
  coronaInfo nederland = coronaInfo('nederland',1,2,3);
  coronaInfo duitsland = coronaInfo('duitsland',10,20,30);
  coronaInfo Belgie = coronaInfo('belgie',1,10,100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('kies een land'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded( //lands
            child: Container(
              child: Column(
                children: <Widget>[
                  FlatButton(
                      child: Text('nederland'),
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                          'dead' : '6.031',
                          'recovered' : 'niet bekend',
                          'land' : 'nederland',
                          'infected' : '47.903'
                        });
                      }
                  ),
                  FlatButton(
                      child: Text('belgie'),
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                          'dead' : '9.619',
                          'recovered' : '16.392',
                          'land' : 'belgie',
                          'infected' : '59.569'
                        });
                      }
                  ),
                ],
              ),
            ),
          ),
          Expanded( //besmettingen
            child: Column(
              children: <Widget>[
                FlatButton(
                    child: Text('t3'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : nederland.dead,
                        'recovered' : nederland.recovered,
                        'land' : nederland.name,
                        'infected' : nederland.infected
                      });
                    }
                ),FlatButton(
                    child: Text('t4'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : nederland.dead,
                        'recovered' : nederland.recovered,
                        'land' : nederland.name,
                        'infected' : nederland.infected
                      });
                    }
                ),
              ],
            ),
          ),
          Expanded( //sterf gevallen
            child: Column(
              children: <Widget>[
                FlatButton(
                    child: Text('t5'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : nederland.dead,
                        'recovered' : nederland.recovered,
                        'land' : nederland.name,
                        'infected' : nederland.infected
                      });
                    }
                ),FlatButton(
                    child: Text('t6'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : nederland.dead,
                        'recovered' : nederland.recovered,
                        'land' : nederland.name,
                        'infected' : nederland.infected
                      });
                    }
                ),
              ],
            ),
          ),
          Expanded( //herstelden
            child: Column(
              children: <Widget>[
                FlatButton(
                    child: Text('t7'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : nederland.dead,
                        'recovered' : nederland.recovered,
                        'land' : nederland.name,
                        'infected' : nederland.infected
                      });
                    }
                ),
                FlatButton(
                    child: Text('t8'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : nederland.dead,
                        'recovered' : nederland.recovered,
                        'land' : nederland.name,
                        'infected' : nederland.infected
                      });
                    }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}