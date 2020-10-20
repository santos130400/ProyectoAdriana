import 'package:flutter/material.dart';
import 'package:prueba_apliacion/main.dart';

int selected = 0;
int opacity8 = 0;
double border1 = 0;
double border2 = 0;
double border3 = 0;
double border4 = 0;
double border5 = 0;
double border6 = 0;
double border7 = 0;

class Paleta extends StatefulWidget {
  Paleta({Key key}) : super(key: key);
  @override
  _Paleta createState() => new _Paleta();
}

class _Paleta extends State<Paleta> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(children: [
            Column(children: [
              barraNavegacion(context),
              texto(),
              //opciones
              //primera fila
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '1',
                      style: TextStyle(
                          fontSize: 20, color: const Color(0xFF5C4438)),
                    ),
                  ),
                  Stack(
                    children: [
                      //fila colores
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 6),
                            child: Container(
                                width: 68, height: 30, color: Colors.red[200]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 6),
                            child: Container(
                                width: 68, height: 30, color: Colors.blue[200]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 6),
                            child: Container(
                                width: 68,
                                height: 30,
                                color: Colors.greenAccent[200]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 6),
                            child: Container(
                                width: 68, height: 30, color: Colors.pink[100]),
                          )
                        ],
                      ),
                      //contiene colores
                      Container(
                          child: GestureDetector(
                        child: Opacity(
                            opacity: 0.3,
                            child: Container(
                              width: 320,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: border1,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[700],
                                        blurRadius: 2,
                                        offset: Offset(-2, 2))
                                  ]),
                            )),
                        onTap: () {
                          setState(() {
                            selected = 1;
                            border1 = 4;
                            border2 = 0;
                            border3 = 0;
                            border4 = 0;
                            border5 = 0;
                            border6 = 0;
                            border7 = 0;
                          });
                        },
                      ))
                    ],
                  )
                ],
              ),

              //segunda fila
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 20, color: const Color(0xFF5C4438)),
                      ),
                    ),
                    Stack(
                      children: [
                        //fila colores
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.grey[500]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68, height: 30, color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.brown[700]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.red[900]),
                            )
                          ],
                        ),
                        //contiene colores
                        Container(
                            child: GestureDetector(
                          child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: border2),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[700],
                                          blurRadius: 2,
                                          offset: Offset(-2, 2))
                                    ]),
                              )),
                          onTap: () {
                            setState(() {
                              selected = 2;
                              border1 = 0;
                              border2 = 4;
                              border3 = 0;
                              border4 = 0;
                              border5 = 0;
                              border6 = 0;
                              border7 = 0;
                            });
                          },
                        ))
                      ],
                    )
                  ],
                ),
              ),
              //tercer fila
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 20, color: const Color(0xFF5C4438)),
                      ),
                    ),
                    Stack(
                      children: [
                        //fila colores
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.red[900]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.lightBlue[600]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.green[900]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.yellow[600]),
                            )
                          ],
                        ),
                        //contiene colores
                        Container(
                            child: GestureDetector(
                          child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: border3,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[700],
                                          blurRadius: 2,
                                          offset: Offset(-2, 2))
                                    ]),
                              )),
                          onTap: () {
                            setState(() {
                              selected = 3;
                              border1 = 0;
                              border2 = 0;
                              border3 = 4;
                              border4 = 0;
                              border5 = 0;
                              border6 = 0;
                              border7 = 0;
                            });
                          },
                        ))
                      ],
                    )
                  ],
                ),
              ),
              //cuarta fila
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '4',
                        style: TextStyle(
                            fontSize: 20, color: const Color(0xFF5C4438)),
                      ),
                    ),
                    Stack(
                      children: [
                        //fila colores
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.orange[400]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.blueGrey),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.lightBlue[900]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.indigo[900]),
                            )
                          ],
                        ),
                        //contiene colores
                        Container(
                            child: GestureDetector(
                          child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: border4),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[700],
                                          blurRadius: 2,
                                          offset: Offset(-2, 2))
                                    ]),
                              )),
                          onTap: () {
                            setState(() {
                              selected = 4;
                              border1 = 0;
                              border2 = 0;
                              border3 = 0;
                              border4 = 4;
                              border5 = 0;
                              border6 = 0;
                              border7 = 0;
                            });
                          },
                        ))
                      ],
                    )
                  ],
                ),
              ),
              //quinta fila
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '5',
                        style: TextStyle(
                            fontSize: 20, color: const Color(0xFF5C4438)),
                      ),
                    ),
                    Stack(
                      children: [
                        //fila colores
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.blueGrey[400]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.brown[800]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.brown[400]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.brown[100]),
                            )
                          ],
                        ),
                        //contiene colores
                        Container(
                            child: GestureDetector(
                          child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: border5),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[700],
                                          blurRadius: 2,
                                          offset: Offset(-2, 2))
                                    ]),
                              )),
                          onTap: () {
                            setState(() {
                              selected = 5;
                              border1 = 0;
                              border2 = 0;
                              border3 = 0;
                              border4 = 0;
                              border5 = 4;
                              border6 = 0;
                              border7 = 0;
                            });
                          },
                        ))
                      ],
                    )
                  ],
                ),
              ),
              //sexta fila
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '6',
                        style: TextStyle(
                            fontSize: 20, color: const Color(0xFF5C4438)),
                      ),
                    ),
                    Stack(
                      children: [
                        //fila colores
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.brown[800]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.red[900]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.grey[800]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.purple[900]),
                            )
                          ],
                        ),

                        //contiene colores
                        Container(
                            child: GestureDetector(
                          child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: border6),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[700],
                                          blurRadius: 2,
                                          offset: Offset(-2, 2))
                                    ]),
                              )),
                          onTap: () {
                            setState(() {
                              selected = 6;
                              border1 = 0;
                              border2 = 0;
                              border3 = 0;
                              border4 = 0;
                              border5 = 0;
                              border6 = 4;
                              border7 = 0;
                            });
                          },
                        ))
                      ],
                    )
                  ],
                ),
              ),
              //septima fila
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '7',
                        style: TextStyle(
                            fontSize: 20, color: const Color(0xFF5C4438)),
                      ),
                    ),
                    Stack(
                      children: [
                        //fila colores
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.red[700]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.redAccent[700]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68,
                                  height: 30,
                                  color: Colors.red[900]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 6),
                              child: Container(
                                  width: 68, height: 30, color: Colors.black),
                            )
                          ],
                        ),
                        //contiene colores
                        Container(
                            child: GestureDetector(
                          child: Opacity(
                              opacity: 0.3,
                              child: Container(
                                width: 320,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.black, width: border7),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey[700],
                                          blurRadius: 2,
                                          offset: Offset(-2, 2))
                                    ]),
                              )),
                          onTap: () {
                            setState(() {
                              selected = 7;
                              border1 = 0;
                              border2 = 0;
                              border3 = 0;
                              border4 = 0;
                              border5 = 0;
                              border6 = 0;
                              border7 = 4;
                            });
                          },
                        ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 90,
              )
            ])
          ]),
          Container(
            height: double.infinity,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Seleccione una Opción',
                  style: TextStyle(color: Color.fromARGB(opacity8, 255, 0, 0)),
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
                              opacity8 = 0;
                            });
                            Navigator.popAndPushNamed(context,'/tejidos');
                            resul.paleta = selected;
                          } else {
                            setState(() {
                              opacity8 = 255;
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
      ),
    );
  }
}

Widget texto() {
  return Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 15),
    child: Container(
        child: Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Column(children: <Widget>[
            new Text("SELECCIONA TU",
                style: new TextStyle(
                    fontSize: 20,
                    color: const Color(0xFF5C4438),
                    fontFamily: 'Roboto'))
          ]),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Column(children: <Widget>[
            new Text("PALETA PREFERIDA",
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
            Navigator.of(context).pushNamed('/detalles');
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
