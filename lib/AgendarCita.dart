import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Cita extends StatefulWidget {
  @override
  _CitaState createState() => _CitaState();
}
Color days=Colors.black;
Color bx1 = Colors.white;
Color bx2 = Colors.white;
Color bx3 = Colors.white;
Color bx4 = Colors.white;
Color bx5 = Colors.white;
Color bx6 = Colors.white;
Color bx7 = Colors.white;
Color bx8 = Colors.white;
Color bx9 = Colors.white;
Color tx1 = Color.fromRGBO(92, 68, 56, 1);
Color tx2 = Color.fromRGBO(92, 68, 56, 1);
Color tx3 = Color.fromRGBO(92, 68, 56, 1);
Color tx4 = Color.fromRGBO(92, 68, 56, 1);
Color tx5 = Color.fromRGBO(92, 68, 56, 1);
Color tx6 = Color.fromRGBO(92, 68, 56, 1);
Color tx7 = Color.fromRGBO(92, 68, 56, 1);
Color tx8 = Color.fromRGBO(92, 68, 56, 1);
Color tx9 = Color.fromRGBO(92, 68, 56, 1);
String temp = '';
int x = 0;
int radio = 0;
var list = [
  'Ene',
  'Feb',
  'Mar',
  'Abr',
  'May',
  'Jun',
  'Jul',
  'Ago',
  'Sep',
  'Oct',
  'Nov',
  'Dic'
];
String p = list[5];

class _CitaState extends State<Cita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            barraNavegacion(context),
            Container(
                height: 100,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                          alignment: Alignment.center,
                          icon: Icon(
                            Icons.keyboard_arrow_left,
                            color: new Color.fromRGBO(92, 68, 56, 1),
                            size: 50,
                          ),
                          onPressed: () {
                            if (p == 'Ene') {
                            } else {
                              for (var i = 0; i < list.length; i++) {
                                if (p == list[i]) {
                                  setState(() {
                                    p = list[i - 1];
                                    i = list.length - 1;
                                  });
                                }
                              }
                            }
                          }),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        p,
                        style: TextStyle(fontSize: 60),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: new Color.fromRGBO(92, 68, 56, 1),
                            size: 50,
                          ),
                          onPressed: () {
                            if (p == 'Dic') {
                            } else {
                              for (var i = 0; i < list.length; i++) {
                                if (p == list[i]) {
                                  setState(() {
                                    p = list[i + 1];
                                    i = list.length - 1;
                                  });
                                }
                              }
                            }
                          }),
                    ),
                  ],
                )),
            Container(
                height: 100,
                child: CarouselSlider(
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 0.25,
                      aspectRatio: 16/9,
                      onPageChanged: (i, reason) {
                        setState(() {
                          x = i + 1;
                          
                        });
                      },
                      enlargeStrategy: CenterPageEnlargeStrategy.scale),
                  items: [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 1.0),
                            child: GestureDetector(
                              child: Text(
                                i.toString(),
                                style: TextStyle(fontSize: 65),
                                textAlign: TextAlign.center,
                              ),
                            ));
                      },
                    );
                  }).toList(),
                )),
            Container(
              height: 200,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(left: 26, right: 26),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    color: Color(0xFFFFEED9),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 4))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          onPressed: () {
                            temp = '8:00';
                            setState(() {
                              bx1 = Color.fromRGBO(92, 68, 56, 1);
                              tx1 = Colors.white;
                              bx2 = Colors.white;
                              tx2 = Color.fromRGBO(92, 68, 56, 1);
                              bx3 = Colors.white;
                              tx3 = Color.fromRGBO(92, 68, 56, 1);
                              bx4 = Colors.white;
                              tx4 = Color.fromRGBO(92, 68, 56, 1);
                              bx5 = Colors.white;
                              tx5 = Color.fromRGBO(92, 68, 56, 1);
                              bx6 = Colors.white;
                              tx6 = Color.fromRGBO(92, 68, 56, 1);
                              bx7 = Colors.white;
                              tx7 = Color.fromRGBO(92, 68, 56, 1);
                              bx8 = Colors.white;
                              tx8 = Color.fromRGBO(92, 68, 56, 1);
                              bx9 = Colors.white;
                              tx9 = Color.fromRGBO(92, 68, 56, 1);
                            });
                          },
                          child: Container(
                            height: 37,
                            width: 84,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bx1,
                              borderRadius: BorderRadius.all(
                                Radius.circular(89),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(92, 68, 56, 1),
                              ),
                            ),
                            child: Text(
                              '8:00',
                              style: TextStyle(color: tx1, fontSize: 20),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            temp = '14:30';
                            setState(() {
                              bx1 = Colors.white;
                              tx1 = Color.fromRGBO(92, 68, 56, 1);
                              bx2 = Color.fromRGBO(92, 68, 56, 1);
                              tx2 = Colors.white;
                              bx3 = Colors.white;
                              tx3 = Color.fromRGBO(92, 68, 56, 1);
                              bx4 = Colors.white;
                              tx4 = Color.fromRGBO(92, 68, 56, 1);
                              bx5 = Colors.white;
                              tx5 = Color.fromRGBO(92, 68, 56, 1);
                              bx6 = Colors.white;
                              tx6 = Color.fromRGBO(92, 68, 56, 1);
                              bx7 = Colors.white;
                              tx7 = Color.fromRGBO(92, 68, 56, 1);
                              bx8 = Colors.white;
                              tx8 = Color.fromRGBO(92, 68, 56, 1);
                              bx9 = Colors.white;
                              tx9 = Color.fromRGBO(92, 68, 56, 1);
                            });
                          },
                          child: Container(
                            height: 37,
                            width: 84,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bx2,
                              borderRadius: BorderRadius.all(
                                Radius.circular(89),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(92, 68, 56, 1),
                              ),
                            ),
                            child: Text(
                              '14:30',
                              style: TextStyle(color: tx2, fontSize: 20),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            temp = '17:30';
                            setState(() {
                              bx1 = Colors.white;
                              tx1 = Color.fromRGBO(92, 68, 56, 1);
                              bx2 = Colors.white;
                              tx2 = Color.fromRGBO(92, 68, 56, 1);
                              bx3 = Color.fromRGBO(92, 68, 56, 1);
                              tx3 = Colors.white;
                              bx4 = Colors.white;
                              tx4 = Color.fromRGBO(92, 68, 56, 1);
                              bx5 = Colors.white;
                              tx5 = Color.fromRGBO(92, 68, 56, 1);
                              bx6 = Colors.white;
                              tx6 = Color.fromRGBO(92, 68, 56, 1);
                              bx7 = Colors.white;
                              tx7 = Color.fromRGBO(92, 68, 56, 1);
                              bx8 = Colors.white;
                              tx8 = Color.fromRGBO(92, 68, 56, 1);
                              bx9 = Colors.white;
                              tx9 = Color.fromRGBO(92, 68, 56, 1);
                            });
                          },
                          child: Container(
                            height: 37,
                            width: 84,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bx3,
                              borderRadius: BorderRadius.all(
                                Radius.circular(89),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(92, 68, 56, 1),
                              ),
                            ),
                            child: Text(
                              '17:30',
                              style: TextStyle(color: tx3, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          onPressed: () {
                            temp = '10:00';
                            setState(() {
                              bx1 = Colors.white;
                              tx1 = Color.fromRGBO(92, 68, 56, 1);
                              bx2 = Colors.white;
                              tx2 = Color.fromRGBO(92, 68, 56, 1);
                              bx3 = Colors.white;
                              tx3 = Color.fromRGBO(92, 68, 56, 1);
                              bx4 = Color.fromRGBO(92, 68, 56, 1);
                              tx4 = Colors.white;
                              bx5 = Colors.white;
                              tx5 = Color.fromRGBO(92, 68, 56, 1);
                              bx6 = Colors.white;
                              tx6 = Color.fromRGBO(92, 68, 56, 1);
                              bx7 = Colors.white;
                              tx7 = Color.fromRGBO(92, 68, 56, 1);
                              bx8 = Colors.white;
                              tx8 = Color.fromRGBO(92, 68, 56, 1);
                              bx9 = Colors.white;
                              tx9 = Color.fromRGBO(92, 68, 56, 1);
                            });
                          },
                          child: Container(
                            height: 37,
                            width: 84,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bx4,
                              borderRadius: BorderRadius.all(
                                Radius.circular(89),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(92, 68, 56, 1),
                              ),
                            ),
                            child: Text(
                              '10:00',
                              style: TextStyle(color: tx4, fontSize: 20),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            temp = '16:00';
                            setState(() {
                              bx1 = Colors.white;
                              tx1 = Color.fromRGBO(92, 68, 56, 1);
                              bx2 = Colors.white;
                              tx2 = Color.fromRGBO(92, 68, 56, 1);
                              bx3 = Colors.white;
                              tx3 = Color.fromRGBO(92, 68, 56, 1);
                              bx4 = Colors.white;
                              tx4 = Color.fromRGBO(92, 68, 56, 1);
                              bx5 = Color.fromRGBO(92, 68, 56, 1);
                              tx5 = Colors.white;
                              bx6 = Colors.white;
                              tx6 = Color.fromRGBO(92, 68, 56, 1);
                              bx7 = Colors.white;
                              tx7 = Color.fromRGBO(92, 68, 56, 1);
                              bx8 = Colors.white;
                              tx8 = Color.fromRGBO(92, 68, 56, 1);
                              bx9 = Colors.white;
                              tx9 = Color.fromRGBO(92, 68, 56, 1);
                            });
                          },
                          child: Container(
                            height: 37,
                            width: 84,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bx5,
                              borderRadius: BorderRadius.all(
                                Radius.circular(89),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(92, 68, 56, 1),
                              ),
                            ),
                            child: Text(
                              '16:00',
                              style: TextStyle(color: tx5, fontSize: 20),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            temp = '18:00';
                            setState(() {
                              bx1 = Colors.white;
                              tx1 = Color.fromRGBO(92, 68, 56, 1);
                              bx2 = Colors.white;
                              tx2 = Color.fromRGBO(92, 68, 56, 1);
                              bx3 = Colors.white;
                              tx3 = Color.fromRGBO(92, 68, 56, 1);
                              bx4 = Colors.white;
                              tx4 = Color.fromRGBO(92, 68, 56, 1);
                              bx5 = Colors.white;
                              tx5 = Color.fromRGBO(92, 68, 56, 1);
                              bx6 = Color.fromRGBO(92, 68, 56, 1);
                              tx6 = Colors.white;
                              bx7 = Colors.white;
                              tx7 = Color.fromRGBO(92, 68, 56, 1);
                              bx8 = Colors.white;
                              tx8 = Color.fromRGBO(92, 68, 56, 1);
                              bx9 = Colors.white;
                              tx9 = Color.fromRGBO(92, 68, 56, 1);
                            });
                          },
                          child: Container(
                            height: 37,
                            width: 84,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bx6,
                              borderRadius: BorderRadius.all(
                                Radius.circular(89),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(92, 68, 56, 1),
                              ),
                            ),
                            child: Text(
                              '18:00',
                              style: TextStyle(color: tx6, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          onPressed: () {
                            temp = '14:00';
                            setState(() {
                              bx1 = Colors.white;
                              tx1 = Color.fromRGBO(92, 68, 56, 1);
                              bx2 = Colors.white;
                              tx2 = Color.fromRGBO(92, 68, 56, 1);
                              bx3 = Colors.white;
                              tx3 = Color.fromRGBO(92, 68, 56, 1);
                              bx4 = Colors.white;
                              tx4 = Color.fromRGBO(92, 68, 56, 1);
                              bx5 = Colors.white;
                              tx5 = Color.fromRGBO(92, 68, 56, 1);
                              bx6 = Colors.white;
                              tx6 = Color.fromRGBO(92, 68, 56, 1);
                              bx7 = Color.fromRGBO(92, 68, 56, 1);
                              tx7 = Colors.white;
                              bx8 = Colors.white;
                              tx8 = Color.fromRGBO(92, 68, 56, 1);
                              bx9 = Colors.white;
                              tx9 = Color.fromRGBO(92, 68, 56, 1);
                            });
                          },
                          child: Container(
                            height: 37,
                            width: 84,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bx7,
                              borderRadius: BorderRadius.all(
                                Radius.circular(89),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(92, 68, 56, 1),
                              ),
                            ),
                            child: Text(
                              '14:00',
                              style: TextStyle(color: tx7, fontSize: 20),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            temp = '17:00';
                            setState(() {
                              bx1 = Colors.white;
                              tx1 = Color.fromRGBO(92, 68, 56, 1);
                              bx2 = Colors.white;
                              tx2 = Color.fromRGBO(92, 68, 56, 1);
                              bx3 = Colors.white;
                              tx3 = Color.fromRGBO(92, 68, 56, 1);
                              bx4 = Colors.white;
                              tx4 = Color.fromRGBO(92, 68, 56, 1);
                              bx5 = Colors.white;
                              tx5 = Color.fromRGBO(92, 68, 56, 1);
                              bx6 = Colors.white;
                              tx6 = Color.fromRGBO(92, 68, 56, 1);
                              bx7 = Colors.white;
                              tx7 = Color.fromRGBO(92, 68, 56, 1);
                              bx8 = Color.fromRGBO(92, 68, 56, 1);
                              tx8 = Colors.white;
                              bx9 = Colors.white;
                              tx9 = Color.fromRGBO(92, 68, 56, 1);
                            });
                          },
                          child: Container(
                            height: 37,
                            width: 84,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bx8,
                              borderRadius: BorderRadius.all(
                                Radius.circular(89),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(92, 68, 56, 1),
                              ),
                            ),
                            child: Text(
                              '17:00',
                              style: TextStyle(color: tx8, fontSize: 20),
                            ),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            temp = '18:30';
                            setState(() {
                              bx1 = Colors.white;
                              tx1 = Color.fromRGBO(92, 68, 56, 1);
                              bx2 = Colors.white;
                              tx2 = Color.fromRGBO(92, 68, 56, 1);
                              bx3 = Colors.white;
                              tx3 = Color.fromRGBO(92, 68, 56, 1);
                              bx4 = Colors.white;
                              tx4 = Color.fromRGBO(92, 68, 56, 1);
                              bx5 = Colors.white;
                              tx5 = Color.fromRGBO(92, 68, 56, 1);
                              bx6 = Colors.white;
                              tx6 = Color.fromRGBO(92, 68, 56, 1);
                              bx7 = Colors.white;
                              tx7 = Color.fromRGBO(92, 68, 56, 1);
                              bx8 = Colors.white;
                              tx8 = Color.fromRGBO(92, 68, 56, 1);
                              bx9 = Color.fromRGBO(92, 68, 56, 1);
                              tx9 = Colors.white;
                            });
                          },
                          child: Container(
                            height: 37,
                            width: 84,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: bx9,
                              borderRadius: BorderRadius.all(
                                Radius.circular(89),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(92, 68, 56, 1),
                              ),
                            ),
                            child: Text(
                              '18:30',
                              style: TextStyle(color: tx9, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    child: RadioListTile(
                      value: 1,
                      activeColor: Color(0xFFFFEED9),
                      title: Text(
                        'ARMARIO',
                        style: TextStyle(
                          color: Color.fromRGBO(92, 68, 56, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      groupValue: radio,
                      onChanged: (val) {
                        setState(() {
                          radio = val;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 200,
                    child: RadioListTile(
                      value: 2,
                      activeColor: Color(0xFFFFEED9),
                      title: Text(
                        'SHOPPING',
                        style: TextStyle(
                          color: Color.fromRGBO(92, 68, 56, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      groupValue: radio,
                      onChanged: (val) {
                        setState(() {
                          radio = val;
                        });
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(right: 17, left: 17, bottom: 38),
          child: FlatButton(
            onPressed: () {
              print(x);
            },
            child: Container(
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: new Color.fromRGBO(255, 198, 165, 1),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 4))]),
              child: Text(
                'CONFIRMAR CITA',
                style: TextStyle(
                    color: new Color.fromRGBO(92, 68, 56, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    ));
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
            Navigator.of(context).pushNamed('/menu');
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
                  'AGENDAR CITA',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 68, 46),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
