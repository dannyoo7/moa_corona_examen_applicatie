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
                    child: Text('duitsland'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : '8.961',
                        'recovered' : '175000',
                        'land' : 'duitsland',
                        'infected' : '192000'
                      });
                    }
                ),FlatButton(
                    child: Text('frankrijk'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : '29.640',
                        'recovered' : '74.372',
                        'land' : 'frankrijk',
                        'infected' : '160000'
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
                    child: Text('nieuw-zeeland'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : '22',
                        'recovered' : '1.132',
                        'land' : 'nieuw-zeeland',
                        'infected' : '1.163'
                      });
                    }
                ),FlatButton(
                    child: Text('polen'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : '1.356',
                        'recovered' : '16.1683',
                        'land' : 'polen',
                        'infected' : '31.931'
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
                    child: Text('china'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : 'onbekend',
                        'recovered' : 'onbekend',
                        'land' : 'china',
                        'infected' : 'onbekend'
                      });
                    }
                ),
                FlatButton(
                    child: Text('wereldwijd'),
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/home' ,arguments: {
                        'dead' : '469k',
                        'recovered' : '4.46 mln',
                        'land' : '8.99 mln',
                        'infected' : '8.99 mln'
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