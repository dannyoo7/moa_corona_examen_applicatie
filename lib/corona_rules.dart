import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moa_corona_examen_applicatie/home.dart';
class Coronarules extends StatefulWidget {
  @override
  _CoronarulesState createState() => _CoronarulesState();
}

class _CoronarulesState extends State<Coronarules> {
  List<String> regels = ["heb je klachten blijf dan thuis","ben je ook benauwd en/of heb je koorts? dan moeten alle huis genoten thuis blijven","houd 1.5 meter afstand","werk zoveel mogelijk vanuit thuis","vermijd drukte","was regelmatig je handen"];
  List<String> foto = ["https://www.emos.nl/wp-content/uploads/20200323_210420.jpg","https://previews.123rf.com/images/pikepicture/pikepicture1912/pikepicture191201245/136554240-human-coughing-icon-vector-outline-human-coughing-sign-isolated-contour-symbol-illustration.jpg","https://jekashop.nl/media/catalog/product/cache/12ad95d8a2fb3df88ee5f5df1ef6c6e8/p/i/picto-social-distance-nl.jpg","https://image.flaticon.com/icons/png/512/14/14817.png","https://static.zoom.nl/B03C908615EE71D0D633F000C30369E9-drukte.jpg","https://w7.pngwing.com/pngs/529/557/png-transparent-computer-icons-hand-washing-symbol-hand-angle-text-photography.png"];
  @override
  var klachten = "https://www.emos.nl/wp-content/uploads/20200323_210420.jpg";
  var hoesten = "https://previews.123rf.com/images/pikepicture/pikepicture1912/pikepicture191201245/136554240-human-coughing-icon-vector-outline-human-coughing-sign-isolated-contour-symbol-illustration.jpg";
  var afstand = "https://jekashop.nl/media/catalog/product/cache/12ad95d8a2fb3df88ee5f5df1ef6c6e8/p/i/picto-social-distance-nl.jpg";
  var huis = "https://image.flaticon.com/icons/png/512/14/14817.png";
  var drukte = "https://static.zoom.nl/B03C908615EE71D0D633F000C30369E9-drukte.jpg";
  var wassen = "https://w7.pngwing.com/pngs/529/557/png-transparent-computer-icons-hand-washing-symbol-hand-angle-text-photography.png";
   //["https://www.emos.nl/wp-content/uploads/20200323_210420.jpg","https://previews.123rf.com/images/pikepicture/pikepicture1912/pikepicture191201245/136554240-human-coughing-icon-vector-outline-human-coughing-sign-isolated-contour-symbol-illustration.jpg","https://jekashop.nl/media/catalog/product/cache/12ad95d8a2fb3df88ee5f5df1ef6c6e8/p/i/picto-social-distance-nl.jpg","https://image.flaticon.com/icons/png/512/14/14817.png","https://static.zoom.nl/B03C908615EE71D0D633F000C30369E9-drukte.jpg","https://w7.pngwing.com/pngs/529/557/png-transparent-computer-icons-hand-washing-symbol-hand-angle-text-photography.png"];
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
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
            builder: (context, constraint) {
              return new GridView.builder(
                itemCount: regels.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: constraint.maxWidth / constraint.maxHeight,
                ),
                itemBuilder: (context,int index) {
                  return Container(
                    margin: EdgeInsets.all(4.0),
                    child: Column(children: [Text(regels[index]),SizedBox(width: 200,height: 112,child: Image.network(foto[index]),)]),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}