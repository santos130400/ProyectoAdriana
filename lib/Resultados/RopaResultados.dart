import 'package:flutter/material.dart';

class RopaResultados extends StatefulWidget {
  @override
  _RopaResultadosState createState() => _RopaResultadosState();
}

class _RopaResultadosState extends State<RopaResultados> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: [
          barraNavegacion(context),
          parteSuperior(context),
          parteInferior(context),
          zapatos(context),
          vestidos(context),
          ropaInterior(context)
        ],
      ),
    );
  }
}

Widget parteSuperior(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 100,
          height: 70,
          child: RaisedButton(
              child: Text(
                "PARTE SUPERIOR",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget parteInferior(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "PARTE INFERIOR",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget zapatos(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "ZAPATOS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget vestidos(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "VESTIDOS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget ropaInterior(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "ROPA INTERIOR",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                  'ROPA',
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
