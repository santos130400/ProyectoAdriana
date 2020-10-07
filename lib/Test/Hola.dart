import 'package:flutter/material.dart';

class Hola extends StatefulWidget {
  Hola({Key key}) : super(key: key);
  @override
  _Hola createState() => new _Hola();
}

class _Hola extends State<Hola> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(children: [
          //progress bar
          barraNavegacion(context),
          //CONTAINER INFORMACION
          Stack(
            children: [
              cajaContieneDatos(),
              Column(
                children: [
                  cajaRosada(),
                  bienvenidos1(),
                  bienvenidos2(),
                  info(),
                  Row(children: [
                    Column(children: [tiempo1(), tiempo2()]),
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: RaisedButton(
                            color: Color.fromARGB(255, 255, 197, 163),
                            child: Text(
                              "EMPEZAR",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 92, 68, 56),
                                  fontSize: 18),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed('/piel');
                            }))
                  ]),
                ],
              ),
              hola(),
            ],
          ),
        ])
      ]),
    );
  }
}

Widget barraNavegacion(BuildContext context) {
  return Stack(children: [
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
          Navigator.of(context).pushNamed('/inicio');
        },
        iconSize: 48.0,
        color: new Color.fromRGBO(92, 68, 56, 1),
        padding: const EdgeInsets.only(left: 10.0, top: 20))
  ]);
}

Widget cajaContieneDatos() {
  return Center(
    child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
            height: 460,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: const Color(0xffffeed9),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 4,
                      offset: Offset(0, 5))
                ]))),
  );
}

Widget cajaRosada() {
  return Center(
    child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Container(
            height: 160,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromRGBO(255, 197, 163, 1),
            ))),
  );
}

Widget hola() {
  return Padding(
      padding: EdgeInsets.only(top: 180, left: 40),
      child: Text("HOLA!",
          style: TextStyle(
              color: Color.fromARGB(255, 92, 68, 56),
              fontWeight: FontWeight.bold,
              fontSize: 60)));
}

Widget bienvenidos1() {
  return Padding(
      padding: EdgeInsets.only(left: 100, top: 70),
      child: Text("Bienvenido a la aplicación de",
          style: TextStyle(
              color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15)));
}

Widget bienvenidos2() {
  return Padding(
      padding: EdgeInsets.only(left: 100),
      child: Text("Adriana Rojas",
          style: TextStyle(
              color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 15)));
}

Widget info() {
  return Padding(
      padding: EdgeInsets.only(right: 50, left: 50, top: 15),
      child: Text(
          "Realizar el siguiente Test le proporciona a la aplicación la información adecuada para    poder entregarte un perfil personal y una mejor experiencia.",
          style: TextStyle(
              color: Color.fromARGB(255, 92, 68, 56),
              fontWeight: FontWeight.bold,
              fontSize: 20)));
}

Widget tiempo1() {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 70),
      child: Text("Tiempo estimado",
          style: TextStyle(color: Colors.grey, fontSize: 12)));
}

Widget tiempo2() {
  return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Text("30 minutos",
          style: TextStyle(color: Colors.grey, fontSize: 12)));
}

void iconButtonPressed() {}
