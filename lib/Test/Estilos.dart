import 'package:flutter/material.dart';
import 'package:prueba_apliacion/main.dart';

int radioItem1 = 0;
int opacity6 = 0;

class Estilos extends StatefulWidget {
  Estilos({Key key}) : super(key: key);
  @override
  _Estilos createState() => new _Estilos();
}

class _Estilos extends State<Estilos> {
  // This widget is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    radioItem1 = 0;
    opacity6 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            barraNavegacion(context),
            texto(),
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(children: [
                  //opciones
                  RadioListTile(
                    groupValue: radioItem1,
                    value: 1,
                    title: Text('Feminidad'),
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
                    title: Text('Sobriedad'),
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
                    title: Text('Tendencia'),
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
                    title: Text('Practicidad'),
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
                    title: Text('Elegancia'),
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
                    title: Text('Originalidad'),
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
                    title: Text('Seducción'),
                    activeColor: new Color.fromRGBO(92, 68, 56, 1),
                    onChanged: (val) {
                      setState(() {
                        radioItem1 = val;
                      });
                    },
                  ),
                  Container(
                    height: 80,
                  )
                ])),
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
                style: TextStyle(color: Color.fromARGB(opacity6, 255, 0, 0)),
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
                              opacity6 = 0;
                            });

                            Navigator.pushNamed(context, '/detalles');
                            resul.valores = radioItem1;
                          } else {
                            setState(() {
                              opacity6 = 255;
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
              ),
            ],
          ),
        )
      ],
    ));
  }
}

Widget texto() {
  return Padding(
    padding: const EdgeInsets.only(top: 30, bottom: 10),
    child: Container(
        child: Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Column(children: <Widget>[
            new Text("¿EN QUÉ VALOR RECONOCES",
                style: new TextStyle(
                  color: new Color.fromRGBO(92, 68, 56, 1),
                  fontSize: 20.0,
                ))
          ]),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Column(children: <Widget>[
            new Text("TU ESTILO?",
                style: new TextStyle(
                  color: new Color.fromRGBO(92, 68, 56, 1),
                  fontSize: 20.0,
                ))
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
            Navigator.of(context).pushNamed('/cuerpo');
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
