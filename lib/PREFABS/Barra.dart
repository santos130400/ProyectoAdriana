import 'package:flutter/material.dart';

class Barra extends StatefulWidget {
  @override
  _BarraState createState() => _BarraState();
}

class _BarraState extends State<Barra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.orange[100],
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
                    Navigator.of(context).pushNamed('/inicio');
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
                  //bolitas
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(71),
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
                                border:
                                    Border.all(color: Colors.black, width: 1),
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
          )
        ],
      ),
    );
  }
}
