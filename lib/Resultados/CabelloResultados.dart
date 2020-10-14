import 'package:flutter/material.dart';

class CabelloResultados extends StatefulWidget {
  @override
  _CabelloResultadosState createState() => _CabelloResultadosState();
}

class _CabelloResultadosState extends State<CabelloResultados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        imagen(),
        ListView(
          children: [
            barraNavegacion(context),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              margin: EdgeInsets.only(right: 67),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 72,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 198, 165),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 63.75),
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      child: Center(
                        child: Text(
                          'CORTES Y PEINADOS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 72,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 198, 165),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 63.75),
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ]),
                      child: Center(
                        child: Text(
                          'COLOR Y EFECTOS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
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
          height: 150,
          decoration: BoxDecoration(
              color: const Color(0xFFFFEED9),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 5, offset: Offset(0, 2.5))
              ])),
      IconButton(
          icon: const Icon(Icons.keyboard_arrow_left),
          onPressed: () {},
          iconSize: 50,
          color: Color.fromRGBO(92, 68, 56, 1),
          padding: const EdgeInsets.only(left: 10.0, top: 20)),
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 90),
            child: Center(
              child: Container(
                child: Text(
                  'CABELLO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 68, 46),
                      fontSize: 35,
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

Widget imagen() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(top: 50),
    decoration: BoxDecoration(color: Colors.white),
    child: Image.asset('assets/fondo1.png'),
  );
}
