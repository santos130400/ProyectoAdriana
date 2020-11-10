import 'package:flutter/material.dart';
import 'package:prueba_apliacion/ResuladosInter.dart';

class AccesoriosResultados extends StatefulWidget {
  AccesoriosResultados({Key key}) : super(key: key);
  @override
  _AccesoriosResultadosState createState() => new _AccesoriosResultadosState();
}

class _AccesoriosResultadosState extends State<AccesoriosResultados> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/fondo1.png'), fit: BoxFit.fill)),
        child: ListView(
          children: [
            barraNavegacion(context),
            collar(context),
            sombreros(context),
            pulseras(context),
            lentes(context),
            bolsos(context),
            cinturones(context),
          ],
        ),
      ),
    );
  }
}

Widget collar(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "COLLARES Y ARETES",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultadosInter(9)));
              },
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget sombreros(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "SOMBREROS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultadosInter(10)));
              },
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget pulseras(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "PULSERAS Y RELOJES",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultadosInter(11)));
              },
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget lentes(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "LENTES",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultadosInter(12)));
              },
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget bolsos(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "BOLSOS Y CARTERAS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultadosInter(13)));
              },
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget cinturones(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "CINTURONES",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultadosInter(14)));
              },
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget barraNavegacion(BuildContext context) {
  return Stack(
    children: [
      Container(
          width: double.infinity,
          height: 130,
          decoration: BoxDecoration(
              color: const Color(0xFFFFEED9),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(54),
                  bottomRight: Radius.circular(54)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, blurRadius: 4, offset: Offset(0, 0.5))
              ])),
      IconButton(
          icon: const Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.of(context).pushNamed('/menu');
          },
          iconSize: 48.0,
          color: new Color.fromRGBO(92, 68, 56, 1),
          padding: const EdgeInsets.only(left: 10.0, top: 20)),
      Column(
        children: [
          //tu progreso
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: Center(
              child: Container(
                child: Text(
                  'ACCESORIOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 68, 46),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
