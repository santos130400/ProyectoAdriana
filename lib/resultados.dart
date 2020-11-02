import 'package:flutter/material.dart';

class Resultados extends StatefulWidget {
  Resultados({Key key}) : super(key: key);
  @override
  _Resultados createState() => new _Resultados();
}

int colorPaleta = 1;

class _Resultados extends State<Resultados> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: [
          barraNavegacion(context),
          boxEstilo(),
          temperaturaColor(),
          if (colorPaleta == 1) boxPaletaCalida(),
          if (colorPaleta == 2) boxPaletaFria(),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              'PALETA FRIA',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 92, 68, 46),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          boxCara(),
        ],
      ),
    );
  }
}

Widget temperaturaColor() {
  return Stack(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 30, bottom: 20),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 50)),
                    Text(
                      'TEMPERATORA',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 68, 46),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 80)),
                    Text(
                      'DE COLOR',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 68, 46),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              '55%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 92, 68, 46),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                      child: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 50),
                      child: Text(
                        'CÁLIDA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 92, 68, 46),
                          fontSize: 10,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 50),
                      child: Text(
                        'FRIA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 92, 68, 46),
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      )
    ],
  );
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
            padding: EdgeInsets.only(top: 80, bottom: 40),
            child: Center(
              child: Container(
                child: Text(
                  'RESULTADOS',
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

Widget boxEstilo() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
          height: 80,
          width: 350,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: new Color.fromRGBO(255, 198, 165, 1),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' ESTILO',
                style: TextStyle(
                  color: Color(0xFF5C4438),
                  fontSize: 20,
                ),
              ),
              Text(
                '  ROMANTICA',
                style: TextStyle(
                  color: Color(0xFF5C4438),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
    ],
  );
}

Widget boxPaletaCalida() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(184, 71, 57, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(62, 112, 49, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(163, 153, 68, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(27, 114, 133, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(246, 177, 99, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(79, 62, 55, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(0, 99, 167, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(72, 206, 169, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(64, 201, 113, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(217, 54, 79, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(231, 190, 124, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(237, 119, 115, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
            ],
          ),
        ],
      ),
    ],
  );
}

Widget boxPaletaFria() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(32, 87, 167, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(96, 89, 167, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(26, 168, 86, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(211, 54, 63, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(240, 120, 190, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(124, 127, 178, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(179, 93, 136, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(242, 119, 137, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(253, 196, 215, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(91, 194, 217, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(190, 188, 176, 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 10)),
            ],
          ),
        ],
      ),
    ],
  );
}

Widget boxCara() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: const Color(0xFFFFEED9),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 10),
                  child: Text(
                    'FORMA DEL ROSTRO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5C4438),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CustomPaint(size: Size(90, 90), painter: DrawTriangleShape()),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'TRIANGULAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5C4438),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 30, bottom: 30)),
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: const Color(0xFFFFEED9),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4))
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 10),
                  child: Text(
                    'FORMA DEL CUERPO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5C4438),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: new Color.fromRGBO(255, 198, 165, 1),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'CUADRADO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5C4438),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

class DrawTriangleShape extends CustomPainter {
  Paint painter;

  DrawTriangleShape() {
    painter = Paint()
      ..color = new Color.fromRGBO(255, 198, 165, 1)
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
