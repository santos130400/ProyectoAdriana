import 'package:flutter/material.dart';
import 'package:prueba_apliacion/main.dart';

int radioItem1 = 0;
int colorPiel = 0;
int opacity1=0;
String tmp='';
class Piel extends StatefulWidget {
  Piel({Key key}) : super(key: key);
  @override
  _Piel createState() => new _Piel();
}



class _Piel extends State<Piel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //progress bar
            barraNavegacion(context),
            textoPregunta(),
            //fila numero 1
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                //Color1
                ClipOval(
                  child: Material(
                    color: Color.fromARGB(255, 73, 33, 5), // button color
                    child: InkWell(
                      splashColor: Colors.white, // inkwell color
                      child: SizedBox(
                          width: 90,
                          height: 90,
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "TOFFEE",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ))),
                      onTap: () {
                        setState(() {
                          colorPiel = 1;
                          tmp="TOFFEE";
                        });
                      },
                    ),
                  ),
                ),

                //Color2
                Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: ClipOval(
                      child: Material(
                        color: Color.fromARGB(
                          255,
                          101,
                          70,
                          48,
                        ), // button color
                        child: InkWell(
                          splashColor: Colors.white, // inkwell color
                          child: SizedBox(
                              width: 90,
                              height: 90,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "COCOA",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ))),
                          onTap: () {
                            setState(() {
                              colorPiel = 2;
                              tmp="COCOA";
                            });
                          },
                        ),
                      ),
                    )),

                //Color3
                Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: ClipOval(
                      child: Material(
                        color: Color.fromARGB(255, 141, 85, 36), // button color
                        child: InkWell(
                          splashColor: Colors.white, // inkwell color
                          child: SizedBox(
                              width: 90,
                              height: 90,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "DOLCE",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ))),
                          onTap: () {
                            setState(() {
                              colorPiel = 3;
                              tmp="DOLCE";
                            });
                          },
                        ),
                      ),
                    ))
              ]),
            ),
          ],
        ),

        //Segunda Fila
        Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              //Color4
              ClipOval(
                child: Material(
                  color: Color.fromARGB(255, 198, 134, 66), // button color
                  child: InkWell(
                    splashColor: Colors.white, // inkwell color
                    child: SizedBox(
                        width: 90,
                        height: 90,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "CHAI",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ))),
                    onTap: () {
                      setState(() {
                        colorPiel = 4;
                        tmp="CHAI";
                      });
                    },
                  ),
                ),
              ),

              //Color5
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ClipOval(
                    child: Material(
                      color: Color.fromARGB(255, 224, 166, 105), // button color
                      child: InkWell(
                        splashColor: Colors.white, // inkwell color
                        child: SizedBox(
                            width: 90,
                            height: 90,
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "HONEY",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))),
                        onTap: () {
                          setState(() {
                            colorPiel = 5;
                            tmp="HONEY";
                          });
                        },
                      ),
                    ),
                  )),

              //Color6
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ClipOval(
                    child: Material(
                      color: Color.fromARGB(255, 241, 194, 125), // button color
                      child: InkWell(
                        splashColor: Colors.white, // inkwell color
                        child: SizedBox(
                            width: 90,
                            height: 90,
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "VAINILLA",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))),
                        onTap: () {
                          setState(() {
                            tmp="VAINILLA";
                            colorPiel = 6;
                          });
                        },
                      ),
                    ),
                  ))
            ])),

        //Tercera Fila
        Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              //Color7
              ClipOval(
                child: Material(
                  color: Color.fromARGB(255, 255, 219, 172), // button color
                  child: InkWell(
                    splashColor: Colors.white, // inkwell color
                    child: SizedBox(
                        width: 90,
                        height: 90,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "CREAM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ))),
                    onTap: () {
                      setState(() {
                        tmp="CREAM";
                        colorPiel = 7;
                      });
                    },
                  ),
                ),
              ),

              //Color8
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ClipOval(
                    child: Material(
                      color: Color.fromARGB(255, 255, 233, 205), // button color
                      child: InkWell(
                        splashColor: Colors.white, // inkwell color
                        child: SizedBox(
                            width: 90,
                            height: 90,
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "LIGHT",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))),
                        onTap: () {
                          setState(() {
                            colorPiel = 8;
                            tmp="LIGHT";
                          });
                        },
                      ),
                    ),
                  )),

              //Color9
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: ClipOval(
                    child: Material(
                      color: Color.fromARGB(255, 255, 246, 234), // button color
                      child: InkWell(
                        splashColor: Colors.white, // inkwell color
                        child: SizedBox(
                            width: 90,
                            height: 90,
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "CLOUD",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))),
                        onTap: () {
                          setState(() {
                            colorPiel = 9;
                            tmp="CLOUD";
                          });
                        },
                      ),
                    ),
                  ))
            ])),

        //textoColor
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            tmp,
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 92, 68, 56),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),

        textoRadio(),

        //radio buttons
        Container(
            margin: const EdgeInsets.only(
              left: 5.0,
              right: 5.0,
              top: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  groupValue: radioItem1,
                  value: 1,
                  activeColor: Color.fromRGBO(92, 68, 56, 1),
                  onChanged: (val) {
                    setState(() {
                      radioItem1 = val;
                    });
                  },
                ),
                Text(
                  'Me quema',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Radio(
                  groupValue: radioItem1,
                  value: 2,
                  activeColor: Color.fromRGBO(92, 68, 56, 1),
                  onChanged: (val) {
                    setState(() {
                      radioItem1 = val;
                    });
                  },
                ),
                Text(
                  'Me broncea',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            )),

        //Button
        Column(
          children: [
            Text('Seleccione ambas opciones', 
      style: TextStyle(
        color: Color.fromARGB(opacity1, 255, 0, 0)
      ),),
            Container(
                height: 63.0,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                decoration:
                    new BoxDecoration(color: new Color.fromRGBO(255, 198, 165, 1)),
                child: FlatButton(
                    onPressed: () {
                      if(colorPiel!=0&& radioItem1!=0){
                        setState(() {
                        opacity1=0;
                      });
                        resul.piel=colorPiel;
                        resul.sol=radioItem1;
                        Navigator.of(context).pushNamed('/venas');
                      }else{
                        setState(() {
                        opacity1=255;
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
                            style:
                                TextStyle(color: new Color.fromRGBO(92, 68, 56, 1)),
                          ),
                        ]))),
          ],
        )
      ],
    ));
  }
}

Widget textoPregunta() {
  return Center(
    child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Text(
              "SELECCIONA EL COLOR ",
              style: TextStyle(color: Colors.brown, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            Text(
              "DE TU PIEL",
              style: TextStyle(color: Colors.brown, fontSize: 20),
              textAlign: TextAlign.center,
            )
          ],
        )),
  );
}

Widget textoRadio() {
  return Padding(
      padding: EdgeInsets.only(top: 0),
      child: Text(
        "    El contacto directo con el sol me:",
        style: TextStyle(color: Colors.brown, fontSize: 18),
        textAlign: TextAlign.center,
      ));
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
            Navigator.of(context).pushNamed('/hola');
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
                            ]))),

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

void iconButtonPressed() {}
