import 'package:flutter/material.dart';
import 'package:prueba_apliacion/main.dart';

int radioItem1 = 0;
int opacity7 = 0;

class Detalles extends StatefulWidget {
  Detalles({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Detalles createState() => _Detalles();
}

class _Detalles extends State<Detalles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(children: [
            barraNavegacion(context),
            //texto
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(children: [
                  Text(
                    "¿QUÉ DETALLES Y ACCESORIOS SON",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, color: const Color(0xFF5C4438)),
                  ),
                  Text(
                    "RECURRENTES EN TU ARMARIO?",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, color: const Color(0xFF5C4438)),
                  )
                ])),
            //opciones
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: RadioListTile(
                groupValue: radioItem1,
                value: 1,
                title:
                    Text('Detalles femeninos: flores, cintas, corazon, moños.'),
                activeColor: new Color.fromRGBO(92, 68, 56, 1),
                onChanged: (val) {
                  setState(() {
                    radioItem1 = val;
                  });
                },
              ),
            ),
            RadioListTile(
              groupValue: radioItem1,
              value: 2,
              title: Text(
                  'Pocas piezas calidas: piezas de oro y plata discretas, perlas, cadenas delicadas'),
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
              title: Text(
                  'Accesorios numerosos: piezas de colores fuertes y decisivos, piezas de tendencia'),
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
                  'Pocos o ningun accesorio: joyas muy pequeñas que no se quitan nunca'),
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
              title: Text('Pocas piezas pero de alta gama'),
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
              title: Text('Detalles sexys y aparentes'),
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
              title: Text('Detalles extravagantes e inusuales'),
              activeColor: new Color.fromRGBO(92, 68, 56, 1),
              onChanged: (val) {
                setState(() {
                  radioItem1 = val;
                });
              },
            )
          ]),
          Column(
            children: [
              Text(
                'Seleccione una Opción',
                style: TextStyle(color: Color.fromARGB(opacity7, 255, 0, 0)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                    height: 63.0,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    decoration: new BoxDecoration(
                        color: new Color.fromRGBO(255, 198, 165, 1)),
                    child: FlatButton(
                        onPressed: () {
                          if (radioItem1 != 0) {
                            setState(() {
                              opacity7 = 0;
                            });

                            Navigator.of(context).pushNamed('/paleta');
                            resul.acces = radioItem1;
                          } else {
                            setState(() {
                              opacity7 = 255;
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
          )
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
            Navigator.of(context).pushNamed('/estilos');
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
