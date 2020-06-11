import 'package:flutter/material.dart';
import 'package:moa_corona_examen_applicatie/home.dart';
import 'package:moa_corona_examen_applicatie/choose_location.dart';
import 'package:moa_corona_examen_applicatie/corona_rules.dart';
import 'package:moa_corona_examen_applicatie/brochure.dart';
import  'package:moa_corona_examen_applicatie/abouth.dart';
void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Home(), //default opening
    '/home': (context) => Home(), //gaat naar home.dart
    '/location': (context) => ChooseLocation(), //gaat naar choose_location.dart
    '/coronarules': (context) => Coronarules(), //gaat naar corona_rules.dart
    '/brochure' : (context) => Brochure(),
    '/abouth' : (context) => Abouth(),
  },
));