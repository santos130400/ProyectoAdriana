import 'package:flutter/material.dart';

class Recomendados extends StatefulWidget {
  Recomendados({Key key}) : super(key: key);
  @override
  _Recomendados createState() => new _Recomendados();
}

class _Recomendados extends State<Recomendados> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: [
          barraNavegacion(context),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              'CUPÓN DEL DIA',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 92, 68, 46),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          boxCupon(),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              'COLOR DE LA SEMANA',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 92, 68, 46),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          boxColorSemana(),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              'PROXIMOS EVENTOS',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 92, 68, 46),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          boxEventos(),
        ],
      ),
    );
  }
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
                  'RECOMENDADOS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 68, 46),
                      fontSize: 35,
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

Widget boxCupon() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
          height: 100,
          width: 350,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: new Color.fromRGBO(255, 198, 165, 1),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
              ]),
          child: Column(
            children: [
              Text(
                '30%',
                style: TextStyle(
                  color: Color(0xFF5C4438),
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'de descuento en la peluqueria chia',
                style: TextStyle(
                  color: Color(0xFF5C4438),
                  fontSize: 15,
                ),
              ),
            ],
          )),
    ],
  );
}

Widget boxColorSemana() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        height: 375,
        width: 270,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 4))
        ]),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                  height: 200,
                  width: 220,
                  decoration: BoxDecoration(color: Colors.red, boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4))
                  ])),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'PANTONE',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                '18-1553 TCX',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(
                'Adrenaline Rush',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget boxEventos() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        height: 350,
        width: 270,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 4))
        ]),
      ),
    ],
  );
}
