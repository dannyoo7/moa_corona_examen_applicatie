import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Brochure extends StatefulWidget {
  @override
  _BrochureState createState() => _BrochureState();
}

class _BrochureState extends State<Brochure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('brochure'),
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
                    RaisedButton(
                      onPressed: watmoetikdoen,
                      child: Text('Wat moet ik doen?'),
                    ),
                  ],
                ),
              ),
          ),
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: gehandicaptenzorg,
                      child: Text('Coronavirus en bezoek in de gehandicaptenzorg'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: icinformatie,
                      child: Text('Informatie over het Coronavirus en verwijzing naar de zorg'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: icinformatie,
                      child: Text('Informatie over het Coronavirus en de zorg op de Intensive Care'),
                    ),
                  ],
                ),
              ),
            ),
          ]
      )
    );
  }
}

watmoetikdoen() async {
  const url = 'https://www.rijksoverheid.nl/onderwerpen/coronavirus-covid-19/documenten/brochures/2020/04/09/het-coronavirus-is-er---wat-moet-ik-doen';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
gehandicaptenzorg() async {
  const url = 'https://www.rijksoverheid.nl/onderwerpen/coronavirus-covid-19/documenten/brochures/2020/04/09/brochure-coronavirus-en-bezoek-in-de-gehandicaptenzorg';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
verwijzing() async {
  const url = 'https://www.rijksoverheid.nl/onderwerpen/coronavirus-covid-19/documenten/brochures/2020/04/30/brochure-coronavirus-eenvoudige-taal-zorg';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
icinformatie() async {
  const url = 'https://www.rijksoverheid.nl/onderwerpen/coronavirus-covid-19/documenten/brochures/2020/04/30/brochure-informatie-over-het-corona-virus-en-de-zorg-op-de-intensive-care';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}