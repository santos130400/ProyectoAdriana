import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prueba_apliacion/ResultadosTest.dart';
import 'package:prueba_apliacion/main.dart';

class Hola extends StatefulWidget {
  @override
  _Hola createState() => new _Hola();
}

class _Hola extends State<Hola> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onBackPressed,
      child: Scaffold(
          body: ListView(children: [
        //progress bar
        barraNavegacion(context),
        cajaContieneDatos(context),
        Container(
          height: 50,
        )
      ])),
    );
  }

  Future<bool> onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('¿Desea cerrar sesion?'),
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text('NO')),
          FlatButton(
              onPressed: () async {
                _cerrarSesion().whenComplete(() {
                  resul = new Test();
                  Navigator.of(context).pushNamed('/inicio');
                });
              },
              child: Text('SI'))
        ],
      ),
    );
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
          onPressed: () async {
            _cerrarSesion().whenComplete(() {
              resul = new Test();
              Navigator.of(context).pushNamed('/inicio');
            });
          },
          iconSize: 48.0,
          color: new Color.fromRGBO(92, 68, 56, 1),
          padding: const EdgeInsets.only(left: 10.0, top: 20))
    ]);
  }

  Widget cajaContieneDatos(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Container(
            height: 520,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: const Color(0xffffeed9),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[400],
                      blurRadius: 4,
                      offset: Offset(0, 5))
                ]),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Container(
                        height: 160,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          color: Color.fromRGBO(255, 197, 163, 1),
                        ),
                        child: Image.asset('assets/foto hola.png',
                            height: 50, width: 100),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        child: Align(
                            alignment: Alignment.centerLeft, child: hola())),
                    Container(
                        margin: EdgeInsets.only(right: 7),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: bienvenidos())),
                    Container(
                        margin: EdgeInsets.only(left: 12, top: 29),
                        child: info()),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child:
                                    Column(children: [tiempo1(), tiempo2()])),
                            Container(
                              width: 153,
                              height: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 197, 163),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromARGB(51, 0, 0, 0),
                                        blurRadius: 5,
                                        offset: Offset(0, 5),
                                        spreadRadius: 1)
                                  ]),
                              child: FlatButton(
                                child: Text(
                                  "EMPEZAR",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 92, 68, 56),
                                      fontSize: 18),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/piel');
                                },
                              ),
                            )
                          ]),
                    ),
                    Container(
                      height: 10,
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }

  Widget hola() {
    return Text("HOLA!",
        style: TextStyle(
            color: Color.fromARGB(255, 92, 68, 56),
            fontWeight: FontWeight.bold,
            fontSize: 60));
  }

  Widget bienvenidos() {
    return Column(
      children: [
        Text("Bienvenido a la aplicación de",
            style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 15)),
        Text("Adriana Rojas",
            style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 15)),
      ],
    );
  }

  Widget info() {
    return Text(
        "Realizar el siguiente Test le proporciona a la aplicación la información adecuada para poder entregarte un perfil personal y una mejor experiencia.",
        style: TextStyle(
            color: Color.fromARGB(255, 92, 68, 56),
            fontWeight: FontWeight.bold,
            fontSize: 20));
  }

  Widget tiempo1() {
    return Text("Tiempo estimado",
        style: TextStyle(color: Colors.grey, fontSize: 12));
  }

  Widget tiempo2() {
    return Text("15 minutos",
        style: TextStyle(color: Colors.grey, fontSize: 12));
  }

  Future _cerrarSesion() async {
    await _auth.signOut();
  }

  void iconButtonPressed() {}
}
