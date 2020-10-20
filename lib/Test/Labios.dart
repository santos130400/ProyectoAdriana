import 'package:flutter/material.dart';
import 'package:prueba_apliacion/main.dart';

int selected = 0;
double borderCon1 = 1;
double borderCon2 = 1;
int opacity20 = 0;

class Labios extends StatefulWidget {
  Labios({Key key}) : super(key: key);
  @override
  _Labios createState() => new _Labios();
}

class _Labios extends State<Labios> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      children: [
        Container(
          child: ListView(
            children: [
              barraNavegacion(context),
              textoPregunta,
              Container(
                height: 400,
                margin: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: borderCon1,
                            color: const Color.fromRGBO(0, 0, 0, 63.75)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 63.75),
                              blurRadius: 4,
                              offset: Offset(0, 4))
                        ],
                      ),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            selected = 1;
                            borderCon1 = 5;
                            borderCon2 = 1;
                          });
                        },
                        child: Container(
                          height: 175,
                          child: ListView(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  'PALETA 1',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromRGBO(92, 68, 56, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 58,
                                    height: 115,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 207, 117, 117)),
                                  ),
                                  Container(
                                    width: 58,
                                    height: 115,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 205, 65, 65)),
                                  ),
                                  Container(
                                    width: 58,
                                    height: 115,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 163, 43, 43)),
                                  ),
                                  Container(
                                    width: 58,
                                    height: 115,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 107, 0, 0)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: borderCon2,
                              color: const Color.fromRGBO(0, 0, 0, 63.75)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 63.75),
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ],
                        ),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              selected = 2;
                              borderCon1 = 1;
                              borderCon2 = 5;
                            });
                          },
                          child: Container(
                            height: 175,
                            child: ListView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Text(
                                    'PALETA 2',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(92, 68, 56, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 58,
                                      height: 115,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 236, 170, 133)),
                                    ),
                                    Container(
                                      width: 58,
                                      height: 115,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 175, 122, 122)),
                                    ),
                                    Container(
                                      width: 58,
                                      height: 115,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 197, 178, 143)),
                                    ),
                                    Container(
                                      width: 58,
                                      height: 115,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 138, 90, 90)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                height: 75,
              )
              //boton
            ],
          ),
        ),
        Container(
          height: double.infinity,
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Seleccione ambas opciones',
                style: TextStyle(color: Color.fromARGB(opacity20, 255, 0, 0)),
              ),
              Container(
                  height: 63.0,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: new BoxDecoration(
                      color: new Color.fromRGBO(255, 198, 165, 1)),
                  child: FlatButton(
                      onPressed: () {
                        if (selected != 0) {
                          setState(() {
                            opacity20 = 0;
                          });
                          resul.labios = selected.toInt();
                          Navigator.of(context).pushNamed('/cabello');
                        } else {
                          setState(() {
                            opacity20 = 255;
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
            ],
          ),
        )
      ],
    ));
  }
}

void iconButtonPressed() {}

Widget textoPregunta = new Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: Column(children: <Widget>[
      Column(
        children: [
          Text(
            'SELECCIONA LA PALETA QUE',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: new Color.fromRGBO(92, 68, 56, 1),
              fontSize: 20,
            ),
          ),
          Text(
            'MAS SE ASEMEJA A TUS LABIOS',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: new Color.fromRGBO(92, 68, 56, 1),
              fontSize: 20,
            ),
          )
        ],
      ),
    ]));

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
            Navigator.of(context).pushNamed('/piel');
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
