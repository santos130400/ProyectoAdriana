import 'package:flutter/material.dart';
import 'package:prueba_apliacion/main.dart';
double border = 0;
double border1 = 0;
double border2 = 0;
double border3 = 0;
double border4 = 0;
double border5 = 0;
double border6 = 0;
double border7 = 0;
int selected = -1;
int radioItem = 0;
int opacity2 = 0;

class Ojos extends StatefulWidget {
  Ojos({Key key}) : super(key: key);
  @override
  _Ojos createState() => new _Ojos();
}

class _Ojos extends State<Ojos> {
  // This widget is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    border =0;
    border1 = 0;
    border2 = 0;
    border3 = 0;
    border4 = 0;
    border5 = 0;
    border6 = 0;
    border7 = 0;
    selected = -1;
    radioItem = 0;
    opacity2 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      children: [
        Container(
          child: ListView(children: [
            barraNavegacion(context),
            texto(),
            Container(
                padding: EdgeInsets.only(top: 100),
                width: 275,
                height: 175,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.vexels.com/media/users/3/134558/isolated/lists/7bf2731c5db33eb567ca38ac78e57b3d-ojo-maquillaje-ilustracion.png"),
                        alignment: Alignment.topCenter))),
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: GestureDetector(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8,
                                        0.0), // 10% of the width, so there are ten blinds.
                                    colors: [
                                      Color(0x8046392B),
                                      Color(0xff46392B)
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: border)),
                            ),
                            onTap: () {
                              setState(() {
                                selected = 10;
                                border=3;
                                border1 = 0;
                                border2 = 0;
                                border3 = 0;
                                border4 = 0;
                                border5 = 0;
                                border6 = 0;
                                border7 = 0;
                              });
                            },
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8,
                                        0.0), // 10% of the width, so there are ten blinds.
                                    colors: [
                                      Color(0x80CD9643),
                                      Color(0xffCD9643)
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: border1)),
                            ),
                            onTap: () {
                              setState(() {
                                selected = 1;
                                border= 0;
                                border1 = 3;
                                border2 = 0;
                                border3 = 0;
                                border4 = 0;
                                border5 = 0;
                                border6 = 0;
                                border7 = 0;
                              });
                            },
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8,
                                        0.0), // 10% of the width, so there are ten blinds.
                                    colors: [
                                      Color(0x80578137),
                                      Color(0xff578137)
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: border2)),
                            ),
                            onTap: () {
                              setState(() {
                                selected = 2;
                                border= 0;
                                border1 = 0;
                                border2 = 3;
                                border3 = 0;
                                border4 = 0;
                                border5 = 0;
                                border6 = 0;
                                border7 = 0;
                              });
                            },
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8,
                                        0.0), // 10% of the width, so there are ten blinds.
                                    colors: [
                                      Color(0x80824709),
                                      Color(0xff824709)
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: border3)),
                            ),
                            onTap: () {
                              setState(() {
                                selected = 3;
                                border= 0;
                                border1 = 0;
                                border2 = 0;
                                border3 = 3;
                                border4 = 0;
                                border5 = 0;
                                border6 = 0;
                                border7 = 0;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: GestureDetector(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8,
                                        0.0), // 10% of the width, so there are ten blinds.
                                    colors: [
                                      Color(0x8098999A),
                                      Color(0xff98999A)
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: border4)),
                            ),
                            onTap: () {
                              setState(() {
                                selected = 4;
                                border= 0;
                                border1 = 0;
                                border2 = 0;
                                border3 = 0;
                                border4 = 3;
                                border5 = 0;
                                border6 = 0;
                                border7 = 0;
                              });
                            },
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8,
                                        0.0), // 10% of the width, so there are ten blinds.
                                    colors: [
                                      Color(0x8089DA6D),
                                      Color(0xff89DA6D)
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: border5)),
                            ),
                            onTap: () {
                              setState(() {
                                selected = 5;
                                border= 0;
                                border1 = 0;
                                border2 = 0;
                                border3 = 0;
                                border4 = 0;
                                border5 = 3;
                                border6 = 0;
                                border7 = 0;
                              });
                            },
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8,
                                        0.0), // 10% of the width, so there are ten blinds.
                                    colors: [
                                      Color(0x8003649A),
                                      Color(0xff03649A)
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: border6)),
                            ),
                            onTap: () {
                              setState(() {
                                selected = 6;
                                border= 0;
                                border1 = 0;
                                border2 = 0;
                                border3 = 0;
                                border4 = 0;
                                border5 = 0;
                                border6 = 3;
                                border7 = 0;
                              });
                            },
                          ),
                        ),
                        Container(
                          child: GestureDetector(
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(0.8,
                                        0.0), // 10% of the width, so there are ten blinds.
                                    colors: [
                                      Color(0x80000000),
                                      Color(0xff000000)
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: border7)),
                            ),
                            onTap: () {
                              setState(() {
                                selected = 10;
                                border=0;
                                border1 = 0;
                                border2 = 0;
                                border3 = 0;
                                border4 = 0;
                                border5 = 0;
                                border6 = 0;
                                border7 = 3;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(children: <Widget>[
                          new Text("Mis ojeras son:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 92, 68, 56),
                                  fontSize: 20.0,
                                  fontFamily: ''))
                        ]),
                        Column()
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            new Radio(
                              groupValue: radioItem,
                              value: 1,
                              onChanged: _handleRadioValueChange,
                            )
                          ],
                        ),
                        Column(children: <Widget>[
                          new Text("Marcadas",
                              style: new TextStyle(
                                  fontSize: 18.0, fontFamily: 'Roboto'))
                        ]),
                        Column(
                          children: <Widget>[
                            new Radio(
                              groupValue: radioItem,
                              value: 2,
                              onChanged: _handleRadioValueChange,
                            )
                          ],
                        ),
                        Column(children: <Widget>[
                          new Text("Poco notorias",
                              style: new TextStyle(
                                  fontSize: 18.0, fontFamily: 'Roboto'))
                        ]),
                      ])
                ],
              ),
            ),
            Container(
              height: 75,
            )
          ]),
        ),
        Container(
          height: double.infinity,
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Seleccione ambas opciones',
                style: TextStyle(color: Color.fromARGB(opacity2, 255, 0, 0)),
              ),
              Container(
                  height: 63.0,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  decoration: new BoxDecoration(
                      color: new Color.fromRGBO(255, 198, 165, 1)),
                  child: FlatButton(
                      onPressed: () {
                        if (selected != 0 && radioItem != 0) {
                          setState(() {
                            opacity2 = 0;
                          });
                          resul.ojos = selected;
                          resul.ojeras = radioItem;
                          Navigator.pushNamed(context, '/cara');
                        } else {
                          setState(() {
                            opacity2 = 255;
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

  void _handleRadioValueChange(int value) {
    setState(() {
      radioItem = value;
    });
  }

  Widget texto() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
          "SELECCIONA EL COLOR                                               DE TUS OJOS",
          style: new TextStyle(
              fontSize: 20.0, color: Color.fromARGB(255, 92, 68, 56)),
          textAlign: TextAlign.center),
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
                      color: Colors.black,
                      blurRadius: 4,
                      offset: Offset(0, 0.5))
                ])),
        IconButton(
            icon: const Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              Navigator.of(context).pushNamed('/cabello');
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
}
