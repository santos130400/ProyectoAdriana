import 'package:flutter/material.dart';
import 'package:prueba_apliacion/main.dart';

// HOLA JUANFER

int radioItem1 = 0;
int opacity10 = 0;

class Caracter extends StatefulWidget {
  Caracter({Key key}) : super(key: key);
  @override
  _Caracter createState() => new _Caracter();
}

class _Caracter extends State<Caracter> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            barraNavegacion(context),
            texto(),
            //opciones
            RadioListTile(
              groupValue: radioItem1,
              value: 1,
              title: Text(
                  'Ligero y femenino, prenses, tablas, drapeados y mangas voluminosas'),
              activeColor: new Color.fromRGBO(92, 68, 56, 1),
              onChanged: (val) {
                setState(() {
                  radioItem1 = val;
                });
              },
            ),
            RadioListTile(
              groupValue: radioItem1,
              value: 2,
              title: Text(
                  'Gemelos (juego de cárdigan y blusa), chaquetas y pantalones clásicos'),
              activeColor: new Color.fromRGBO(92, 68, 56, 1),
              onChanged: (val) {
                setState(() {
                  radioItem1 = val;
                });
              },
            ),
            RadioListTile(
              groupValue: radioItem1,
              value: 3,
              title: Text('Detalles a la moda y cortes decisivos'),
              activeColor: new Color.fromRGBO(92, 68, 56, 1),
              onChanged: (val) {
                setState(() {
                  radioItem1 = val;
                });
              },
            ),
            RadioListTile(
              groupValue: radioItem1,
              value: 4,
              title: Text(
                  'Facilidad y cortes poco estructurados (anchos y comodos)'),
              activeColor: new Color.fromRGBO(92, 68, 56, 1),
              onChanged: (val) {
                setState(() {
                  radioItem1 = val;
                });
              },
            ),
            RadioListTile(
              groupValue: radioItem1,
              value: 5,
              title: Text(
                  'Coordinados (chaqueta y pantalón iguales), faldas tubo y vestidos de Coctel'),
              activeColor: new Color.fromRGBO(92, 68, 56, 1),
              onChanged: (val) {
                setState(() {
                  radioItem1 = val;
                });
              },
            ),
            RadioListTile(
              groupValue: radioItem1,
              value: 6,
              title: Text('Piezas vintage o étnicas'),
              activeColor: new Color.fromRGBO(92, 68, 56, 1),
              onChanged: (val) {
                setState(() {
                  radioItem1 = val;
                });
              },
            ),
            RadioListTile(
              groupValue: radioItem1,
              value: 7,
              title: Text('Vestidos ajustados y escotes profundos'),
              activeColor: new Color.fromRGBO(92, 68, 56, 1),
              onChanged: (val) {
                setState(() {
                  radioItem1 = val;
                });
              },
            ),
          ],
        ),
        Container(
            alignment: Alignment.bottomCenter,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Seleccione una Opción',
                  style: TextStyle(color: Color.fromARGB(opacity10, 255, 0, 0)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                      height: 63.0,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      decoration: new BoxDecoration(
                          color: new Color.fromRGBO(255, 198, 165, 1)),
                      child: FlatButton(
                          onPressed: () {
                            if (radioItem1 != 0) {
                              setState(() {
                                opacity10 = 0;
                              });
                              Navigator.of(context).pushNamed('/preferencias');
                              resul.carac = radioItem1;
                            } else {
                              setState(() {
                                opacity10 = 255;
                              });
                            }
                          },
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'CONTINUAR',
                                  textAlign: TextAlign.center,
                                  textScaleFactor: 2.0,
                                  style: TextStyle(
                                      color: new Color.fromRGBO(92, 68, 56, 1)),
                                ),
                              ]))),
                )
              ],
            ))
      ],
    ));
  }
}

Widget texto() {
  return Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 10),
    child: Container(
        child: Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Column(children: <Widget>[
            new Text("¿QUE TIPOS DE CARACTERISTICAS",
                style: new TextStyle(
                    fontSize: 20,
                    color: const Color(0xFF5C4438),
                    fontFamily: 'Roboto'))
          ]),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Column(children: <Widget>[
            new Text("BUSCAS EN LAS PRENDAS?",
                style: new TextStyle(
                    fontSize: 20,
                    color: const Color(0xFF5C4438),
                    fontFamily: 'Roboto'))
          ]),
        ])
      ],
    )),
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
            Navigator.of(context).pushNamed('/tejidos');
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
                  'Tu progreso',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          //row
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //bolita
                Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C4438),
                      borderRadius: BorderRadius.circular(71),
                      border: Border.all(color: Colors.black, width: 1),
                    )),

                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                        color: const Color(0xFF5C4438),
                        borderRadius: BorderRadius.circular(71),
                        border: Border.all(color: Colors.black, width: 1)),
                  ),
                ),
                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C4438),
                      borderRadius: BorderRadius.circular(71),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C4438),
                      borderRadius: BorderRadius.circular(71),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C4438),
                      borderRadius: BorderRadius.circular(71),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C4438),
                      borderRadius: BorderRadius.circular(71),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C4438),
                      borderRadius: BorderRadius.circular(71),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C4438),
                      borderRadius: BorderRadius.circular(71),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C4438),
                      borderRadius: BorderRadius.circular(71),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C4438),
                      borderRadius: BorderRadius.circular(71),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5C4438),
                      borderRadius: BorderRadius.circular(71),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                ),
                //bolita
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 21,
                    height: 10,
                    decoration: BoxDecoration(
                        color: const Color(0xFF5C4438),
                        borderRadius: BorderRadius.circular(71),
                        border: Border.all(color: Colors.black, width: 1),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.grey[50],
                              Colors.grey[100],
                              Colors.grey[400],
                            ],
                            stops: [
                              0.1,
                              0.3,
                              0.8
                            ])),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    ],
  );
}
