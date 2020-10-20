import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:prueba_apliacion/main.dart';

class Cabello extends StatefulWidget {
  Cabello({Key key}) : super(key: key);
  @override
  _Cabello createState() => new _Cabello();
}

double border1 = 0;
double border2 = 0;
double border3 = 0;
double border4 = 0;
double border5 = 0;
double border6 = 0;
double border7 = 0;
double border8 = 0;
double border9 = 0;
int selected = 0;
int opacity = 0;

class _Cabello extends State<Cabello> {
  // This widget is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    border1 = 0;
    border2 = 0;
    border3 = 0;
    border4 = 0;
    border5 = 0;
    border6 = 0;
    border7 = 0;
    border8 = 0;
    border9 = 0;
    selected = 0;
    opacity = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      children: [
        Container(
          child: ListView(
            children: [
              Column(
                children: [
                  barraNavegacion(context),
                  texto(),
                  Container(
                      padding: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        bottom: 15,
                      ),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          scrollDirection: Axis.vertical,
                          autoPlay: true,
                          viewportFraction: 0.3,
                          autoPlayInterval: Duration(seconds: 5),
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          height: 385,
                        ),
                        items: [
                          Container(
                            child: GestureDetector(
                              child: Container(
                                width: 20,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 222, 190, 153),
                                    border: Border.all(
                                        color: Colors.brown, width: border1)),
                              ),
                              onTap: () {
                                setState(() {
                                  selected = 1;
                                  border1 = 5;
                                  border2 = 0;
                                  border3 = 0;
                                  border4 = 0;
                                  border5 = 0;
                                  border6 = 0;
                                  border7 = 0;
                                  border8 = 0;
                                  border9 = 0;
                                });
                              },
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              child: Container(
                                width: 20,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 170, 136, 102),
                                    border: Border.all(
                                        color: Colors.brown, width: border2)),
                              ),
                              onTap: () {
                                setState(() {
                                  selected = 2;
                                  border1 = 0;
                                  border2 = 5;
                                  border3 = 0;
                                  border4 = 0;
                                  border5 = 0;
                                  border6 = 0;
                                  border7 = 0;
                                  border8 = 0;
                                  border9 = 0;
                                });
                              },
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              child: Container(
                                width: 20,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 213, 176, 113),
                                    border: Border.all(
                                        color: Colors.brown, width: border3)),
                              ),
                              onTap: () {
                                setState(() {
                                  selected = 3;
                                  border1 = 0;
                                  border2 = 0;
                                  border3 = 5;
                                  border4 = 0;
                                  border5 = 0;
                                  border6 = 0;
                                  border7 = 0;
                                  border8 = 0;
                                  border9 = 0;
                                });
                              },
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              child: Container(
                                width: 20,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 239, 197, 97),
                                    border: Border.all(
                                        color: Colors.brown, width: border4)),
                              ),
                              onTap: () {
                                setState(() {
                                  selected = 4;
                                  border1 = 0;
                                  border2 = 0;
                                  border3 = 0;
                                  border4 = 5;
                                  border5 = 0;
                                  border6 = 0;
                                  border7 = 0;
                                  border8 = 0;
                                  border9 = 0;
                                });
                              },
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              child: Container(
                                width: 20,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 192, 99, 53),
                                    border: Border.all(
                                        color: Colors.brown, width: border5)),
                              ),
                              onTap: () {
                                setState(() {
                                  selected = 5;
                                  border1 = 0;
                                  border2 = 0;
                                  border3 = 0;
                                  border4 = 0;
                                  border5 = 5;
                                  border6 = 0;
                                  border7 = 0;
                                  border8 = 0;
                                  border9 = 0;
                                });
                              },
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              child: Container(
                                width: 20,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 154, 51, 0),
                                    border: Border.all(
                                        color: Colors.brown, width: border6)),
                              ),
                              onTap: () {
                                setState(() {
                                  selected = 6;
                                  border1 = 0;
                                  border2 = 0;
                                  border3 = 0;
                                  border4 = 0;
                                  border5 = 0;
                                  border6 = 5;
                                  border7 = 0;
                                  border8 = 0;
                                  border9 = 0;
                                });
                              },
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              child: Container(
                                width: 20,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 79, 26, 0),
                                    border: Border.all(
                                        color: Colors.brown, width: border7)),
                              ),
                              onTap: () {
                                setState(() {
                                  selected = 7;
                                  border1 = 0;
                                  border2 = 0;
                                  border3 = 0;
                                  border4 = 0;
                                  border5 = 0;
                                  border6 = 0;
                                  border7 = 5;
                                  border8 = 0;
                                  border9 = 0;
                                });
                              },
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              child: Container(
                                width: 20,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 31, 10, 0),
                                    border: Border.all(
                                        color: Colors.brown, width: border8)),
                              ),
                              onTap: () {
                                setState(() {
                                  selected = 8;
                                  border1 = 0;
                                  border2 = 0;
                                  border3 = 0;
                                  border4 = 0;
                                  border5 = 0;
                                  border6 = 0;
                                  border7 = 0;
                                  border8 = 5;
                                  border9 = 0;
                                });
                              },
                            ),
                          ),
                          Container(
                            child: GestureDetector(
                              child: Container(
                                width: 20,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 196, 193, 186),
                                    border: Border.all(
                                        color: Colors.brown, width: border9)),
                              ),
                              onTap: () {
                                setState(() {
                                  selected = 9;
                                  border1 = 0;
                                  border2 = 0;
                                  border3 = 0;
                                  border4 = 0;
                                  border5 = 0;
                                  border6 = 0;
                                  border7 = 0;
                                  border8 = 0;
                                  border9 = 5;
                                });
                              },
                            ),
                          ),
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 1.0),

                                  // child: FittedBox(
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: i,
                                  )

                                  //    fit: BoxFit.fill,
                                  // )
                                  //Este codigo es de prueba
                                  );
                            },
                          );
                        }).toList(),
                      )),
                  Container(
                    height: 75,
                  )
                ],
              ),
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
                'Seleccione una opción',
                style: TextStyle(color: Color.fromARGB(opacity, 255, 0, 0)),
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
                            opacity = 0;
                          });
                          resul.pelo = selected;
                          Navigator.popAndPushNamed(context, '/ojos');
                        } else {
                          setState(() {
                            opacity = 255;
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

Widget texto() {
  return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 15),
      child: Column(children: <Widget>[
        Center(
          child: Text(
            'SELECCIONA EL COLOR ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: new Color.fromRGBO(92, 68, 56, 1),
              fontSize: 20,
            ),
          ),
        ),
        Center(
          child: Text(
            'DE TU CABELLO',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: new Color.fromRGBO(92, 68, 56, 1),
              fontSize: 20,
            ),
          ),
        )
      ]));
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
            Navigator.of(context).pushNamed('/labios');
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
