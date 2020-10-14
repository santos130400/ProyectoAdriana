import 'package:flutter/material.dart';

class MaquillajeResultados extends StatefulWidget {
  MaquillajeResultados({Key key}) : super(key: key);
  @override
  _MaquillajeResultadosState createState() => new _MaquillajeResultadosState();
}

class _MaquillajeResultadosState extends State<MaquillajeResultados> {
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
            ojos(context),
            labios(context),
            piel(context),
          ],
        ),
      ),
    );
  }
}

Widget ojos(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 100,
          height: 70,
          child: RaisedButton(
              child: Text(
                "OJOS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget labios(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "LABIOS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget piel(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "PIEL",
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
                  'MAQUILLAJE',
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

@override
State<StatefulWidget> createState() {
  // TODO: implement createState
  throw UnimplementedError();
}
