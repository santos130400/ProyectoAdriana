import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//import 'package:camera/camera.dart';
double border1 = 0;
double border2 = 0;
double border3 = 0;
double selected = 0;
String palabra = '';

//List<CameraDescription> cameras;

// class CameraApp extends StatefulWidget {
//   @override
//   CameraAppState createState() => CameraAppState();
// }

// class CameraAppState extends State<CameraApp> {
//   CameraController controller;
//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(cameras[1], ResolutionPreset.medium);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }

//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return RotationTransition(
//       turns: AlwaysStoppedAnimation(270 / 360),
//       child: CameraPreview(controller),
//     );
//   }
// }

class Cara extends StatefulWidget {
  Cara({Key key}) : super(key: key);
  @override
  _Cara createState() => new _Cara();
}

class _Cara extends State<Cara> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(children: [
        barraNavegacion(context),
        faces,
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height),
          items: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: border1, color: Color.fromRGBO(92, 68, 56, 1))),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        palabra = 'CUADRADA';
                        selected = 1;
                        border1 = 5;
                        border2 = 0;
                        border3 = 0;
                      });
                    },
                    child: Image.asset('assets/face_01.png'))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: border2, color: Color.fromRGBO(92, 68, 56, 1))),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        palabra = 'CIRCULAR';
                        selected = 2;
                        border1 = 0;
                        border2 = 5;
                        border3 = 0;
                      });
                    },
                    child: Image.asset('assets/face_01.png'))),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: border3, color: Color.fromRGBO(92, 68, 56, 1))),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        palabra = 'TRIANGULO';
                        selected = 3;
                        border1 = 0;
                        border2 = 0;
                        border3 = 5;
                      });
                    },
                    child: Image.asset('assets/face_01.png'))),
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 1.0),

                  // child: FittedBox(
                  child: i,
                  //    fit: BoxFit.fill,
                  //)
                  //Este codigo es de prueba
                );
              },
            );
          }).toList(),
        ),
        Row(
          children: [
            Container(
                width: 250,
                child: Text(
                  palabra,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Color(0xFF5C4438)),
                )),
            Container(
              height: 50.0,
              width: 50.0,
              decoration: new BoxDecoration(
                  color: new Color.fromRGBO(255, 238, 217, 1),
                  borderRadius: new BorderRadius.all(Radius.circular(54.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 4.0,
                        offset: Offset(0.0, 0.75))
                  ]),
              margin: new EdgeInsets.only(
                  left: 80.0, bottom: 10.0, top: 45.0, right: 10),
              alignment: Alignment.centerRight,
              child: FlatButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //  MaterialPageRoute(builder: (context)=> CameraApp())
                    // );
                  },
                  child: Image.asset('assets/camara_01.png')),
            ),
          ],
        ),
        continuar(context)
      ]),
    );
  }
}

Widget continuar(BuildContext context) {
  return Container(
      height: 63.0,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: 15,
      ),
      decoration:
          new BoxDecoration(color: new Color.fromRGBO(255, 198, 165, 1)),
      child: FlatButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/pesoEstatura');
          },
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'CONTINUAR',
                  textAlign: TextAlign.center,
                  textScaleFactor: 2.0,
                  style: TextStyle(color: new Color.fromRGBO(92, 68, 56, 1)),
                ),
              ])));
}

Widget faces = new Container(
    padding: const EdgeInsets.only(top: 40, bottom: 50),
    child: Column(children: <Widget>[
      Column(
        children: [
          Text(
            'SELECCIONA LA FORMA',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: new Color.fromRGBO(92, 68, 56, 1),
              fontSize: 20,
            ),
          ),
          Text(
            'DE TU CARA',
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
            Navigator.of(context).pushNamed('/ojos');
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
