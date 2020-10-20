import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prueba_apliacion/AgendarCita.dart';
import 'package:prueba_apliacion/CambiarContrase%C3%B1a.dart';
import 'package:prueba_apliacion/Cargando.dart';
import 'package:prueba_apliacion/Citas.dart';
import 'package:prueba_apliacion/Inicio.dart';
import 'package:prueba_apliacion/MenuPrincipal.dart';
import 'package:prueba_apliacion/Registro.dart';
import 'package:prueba_apliacion/Resultados/AccesoriosResultados.dart';
import 'package:prueba_apliacion/Resultados/RopaResultados.dart';
import 'package:prueba_apliacion/ResultadosTest.dart';
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
import 'package:prueba_apliacion/Test/Labios.dart';
import 'package:prueba_apliacion/Resultados/CabelloResultados.dart';
import 'package:prueba_apliacion/Resultados/MaquillajeResultados.dart';
import 'package:prueba_apliacion/Pago.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'MODELO/Auth.dart';

Test resul = new Test();
Auth nombreid = Auth();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

var cara = new Cara();
var cabello = new Cabello();
var caracter = new Caracter();
var formaCuerpo = new Cuerpo();
var detalles = new Detalles();
var estilos = new Estilos();
var hola = new Hola();
var labios = new Labios();
var ojos = new Ojos();
var paleta = new Paleta();
var pesoEstatura = new PesoEstatura();
var piel = new Piel();
var preferencias = new Preferencias();
var tejidos = new Tejidos();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Inicio(),
        routes: <String, WidgetBuilder>{
          '/inicio': (BuildContext context) => new Inicio(),
          '/menu': (BuildContext context) => new MenuPrincipal(),
          '/cita': (BuildContext context) => new Cita(),
          '/cargando': (BuildContext context) => new Cargando(),
          '/registro': (BuildContext context) => new Registro(),
          '/cara': (BuildContext context) => cara,
          '/tejidos': (BuildContext context) => tejidos,
          '/preferencias': (BuildContext context) => preferencias,
          '/cabello': (BuildContext context) => cabello,
          '/ojos': (BuildContext context) => ojos,
          '/estilos': (BuildContext context) => estilos,
          '/hola': (BuildContext context) => hola,
          '/piel': (BuildContext context) => piel,
          '/labios': (BuildContext context) => labios,
          '/cuerpo': (BuildContext context) => formaCuerpo,
          '/detalles': (BuildContext context) => detalles,
          '/caracter': (BuildContext context) => caracter,
          '/paleta': (BuildContext context) => paleta,
          '/pesoEstatura': (BuildContext context) => pesoEstatura,
          '/resultadosCabello': (BuildContext context) =>
              new CabelloResultados(),
          '/resultadosMaquillaje': (BuildContext context) =>
              new MaquillajeResultados(),
          '/resultadosRopa': (BuildContext context) => new RopaResultados(),
          '/resultadosAccesorios': (BuildContext context) =>
              new AccesoriosResultados(),
          '/pago': (BuildContext context) => new Pago(),
          '/cambioContra': (BuildContext context) => new Cambio(),
          '/citaAgendar': (BuildContext context) => new CitaAgendar(),
        });
  }
}
