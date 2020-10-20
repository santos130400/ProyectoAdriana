import 'package:flutter/material.dart';

void main() {
  runApp(MyStatelessApp());
}

class MyStatelessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/fondo1.png'), fit: BoxFit.fill)),
          child: ListView(
            children: [
              barraNavegacion(context),
              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(
                  children: <Widget>[],
                ),
              ),
              botonAgendar(),
              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(
                  children: <Widget>[],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, right: 18),
                height: 370,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(9)),
                  color: Color(0xFFFFEED9),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: <Widget>[
                    agenda(),
                    iconoX(),
                  ],
                ),

                //iconoX(),
              ),
              botonesFinales(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget botonAgendar() {
  return FlatButton(
    onPressed: () {},
    child: Container(
      height: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: new Color.fromRGBO(255, 198, 165, 1),
          borderRadius: BorderRadius.all(Radius.circular(6)),
          boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
          ]),
      child: Text(
        'AGENDAR',
        style: TextStyle(
          color: Color(0xFF5C4438),
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
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
                  'MIS CITAS',
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

Widget agenda() {
  return Container(
    height: 70,
    width: 280,
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.only(left: 18, right: 18),
    decoration: BoxDecoration(
      color: Color(0xFFFFFFFF),
    ),
  );
}

Widget iconoX() {
  return Container(
    padding: const EdgeInsets.all(0.0),
    height: 0,
    alignment: Alignment.centerLeft,
    child: IconButton(
        alignment: Alignment.centerRight,
        icon: Icon(Icons.close),
        iconSize: 40,
        color: Color(0xFF5C4438),
        onPressed: () {}),
  );
}

Widget botonesFinales() {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Stack(children: [
      Container(height: 50, width: double.maxFinite, color: Color(0xFFEBA47A)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 50,
              width: 135,
              decoration: BoxDecoration(color: Color(0xFFEBA47A)),
              child: FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.home,
                    size: 40,
                  ))),
          Container(
            height: 50,
            width: 135,
            decoration: BoxDecoration(
              color: Color(0xFFEBA47A),
            ),
            child: FlatButton(
                onPressed: () {},
                child: Icon(
                  Icons.favorite_border,
                  size: 40,
                )),
          ),
          Container(
              height: 50,
              width: 135,
              decoration: BoxDecoration(color: Color(0xFFEBA47A)),
              child: FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.access_time,
                    size: 40,
                  )))
        ],
      ),
    ]),
  );
}
