import 'package:flutter/material.dart';

class Accesorios extends StatefulWidget {
  Accesorios({Key key}) : super(key: key);
  @override
  _Accesorios createState() => new _Accesorios();
}

class _Accesorios extends State<Accesorios> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
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
    );
  }
}

Widget collar(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 10),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "COLLAR Y ARETES",
                style: TextStyle(
                    color: Color.fromARGB(255, 92, 68, 56),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget sombreros(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "SOMBREROS",
                style: TextStyle(
                    color: Color.fromARGB(255, 92, 68, 56),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget pulseras(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "PULSERAS Y RELOJES",
                style: TextStyle(
                    color: Color.fromARGB(255, 92, 68, 56),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget lentes(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "LENTES",
                style: TextStyle(
                    color: Color.fromARGB(255, 92, 68, 56),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget bolsos(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "BOLSOS Y CARTERAS",
                style: TextStyle(
                    color: Color.fromARGB(255, 92, 68, 56),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget cinturones(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "CINTURONES",
                style: TextStyle(
                    color: Color.fromARGB(255, 92, 68, 56),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
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
            Navigator.of(context).pushNamed('/caracter');
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
                  textScaleFactor: 2.0,
                  style: TextStyle(),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
