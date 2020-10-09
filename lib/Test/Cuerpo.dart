import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:prueba_apliacion/main.dart';

class Cuerpo extends StatefulWidget {
  Cuerpo({Key key}) : super(key: key);
  @override
  _Cuerpo createState() => _Cuerpo();
}

double cuerpo1 = 0;
double cuerpo2 = 0;
double cuerpo3 = 0;
int seleccionado = 0;
int opacity5 = 0;

class _Cuerpo extends State<Cuerpo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          barraNavegacion(context),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "SELECCIONA LA FORMA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(92, 68, 56, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Text(
                  "DE TU CUERPO",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(92, 68, 56, 1)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 360,
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              enableInfiniteScroll: true,
            ),
            items: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    seleccionado = 1;
                    cuerpo1 = 5;
                    cuerpo2 = 0;
                    cuerpo3 = 0;
                  });
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(width: cuerpo1, color: Colors.brown),
                  ),
                  child: Image.asset('assets/cuerpo1.png'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    seleccionado = 2;
                    cuerpo1 = 0;
                    cuerpo2 = 5;
                    cuerpo3 = 0;
                  });
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(width: cuerpo2, color: Colors.brown),
                  ),
                  child: Image.asset('assets/cuerpo2.png'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    seleccionado = 3;
                    cuerpo1 = 0;
                    cuerpo2 = 0;
                    cuerpo3 = 5;
                  });
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(width: cuerpo3, color: Colors.brown),
                  ),
                  child: Image.asset('assets/cuerpo3.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Column(
            children: [
              Text(
                'Seleccione una opción',
                style: TextStyle(color: Color.fromARGB(opacity5, 255, 0, 0)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    height: 63.0,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    decoration: new BoxDecoration(
                        color: new Color.fromRGBO(255, 198, 165, 1)),
                    child: FlatButton(
                        onPressed: () {
                          if (seleccionado != 0) {
                            setState(() {
                              opacity5 = 0;
                            });

                            Navigator.of(context).pushNamed('/estilos');
                            resul.forma = seleccionado;
                          } else {
                            setState(() {
                              opacity5 = 255;
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
            Navigator.of(context).pushNamed('/pesoEstatura');
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
