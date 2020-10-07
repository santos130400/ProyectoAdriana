import 'package:flutter/material.dart';
import 'package:prueba_apliacion/Inicio.dart';
import 'package:prueba_apliacion/Menu.dart';
import 'package:prueba_apliacion/Registro.dart';
import 'package:prueba_apliacion/Test/Cabello.dart';
import 'package:prueba_apliacion/Test/Cara.dart';
import 'package:prueba_apliacion/Test/Caracter.dart';
import 'package:prueba_apliacion/Test/Cuerpo.dart';
import 'package:prueba_apliacion/Test/Detalles.dart';
import 'package:prueba_apliacion/Test/Estilos.dart';
import 'package:prueba_apliacion/Test/Hola.dart';
import 'package:prueba_apliacion/Test/Ojos.dart';
import 'package:prueba_apliacion/Test/Paleta.dart';
import 'package:prueba_apliacion/Test/PesoEstatura.dart';
import 'package:prueba_apliacion/Test/Piel.dart';
import 'package:prueba_apliacion/Test/Preferencias.dart';
import 'package:prueba_apliacion/Test/Tejidos.dart';
import 'package:prueba_apliacion/Test/Venas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Inicio(),
        routes: <String, WidgetBuilder>{
          '/inicio': (BuildContext context) => new Inicio(),
          '/menu': (BuildContext context) => new Menu(),
          '/registro': (BuildContext context) => new Registro(),
          '/cara': (BuildContext context) => new Cara(),
          '/tejidos': (BuildContext context) => new Tejidos(),
          '/preferencias': (BuildContext context) => new Preferencias(),
          '/cabello': (BuildContext context) => new Cabello(),
          '/ojos': (BuildContext context) => new Ojos(),
          '/estilos': (BuildContext context) => new Estilos(),
          '/hola': (BuildContext context) => new Hola(),
          '/piel': (BuildContext context) => new Piel(),
          '/venas': (BuildContext context) => new Venas(),
          '/cuerpo': (BuildContext context) => new Cuerpo(),
          '/detalles': (BuildContext context) => new Detalles(),
          '/caracter': (BuildContext context) => new Caracter(),
          '/paleta': (BuildContext context) => new Paleta(),
          '/pesoEstatura': (BuildContext context) => new PesoEstatura(),
        });
  }
}
