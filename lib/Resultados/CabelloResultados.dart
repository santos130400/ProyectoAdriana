import 'package:flutter/material.dart';
import 'package:prueba_apliacion/ResuladosInter.dart';

class CabelloResultados extends StatefulWidget {
  @override
  _CabelloResultadosState createState() => _CabelloResultadosState();
}

class _CabelloResultadosState extends State<CabelloResultados> {
  @override
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
            cabelloYPeinados(context),
            colorYEfectos(context),
          ],
        ),
      ),
    );
  }
}

Widget cabelloYPeinados(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "CABELLO Y PEINADOS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultadosInter(15)));
              },
              color: Color.fromARGB(255, 255, 198, 165))));
}

Widget colorYEfectos(BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 20, right: 80),
      child: SizedBox(
          width: 410,
          height: 70,
          child: RaisedButton(
              child: Text(
                "COLOR Y EFECTOS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultadosInter(16)));
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
                  'CABELLO',
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
