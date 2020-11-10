import 'package:flutter/material.dart';
import 'package:prueba_apliacion/PREFABS/Metodos.dart';
import 'package:prueba_apliacion/main.dart';

class ResultadosCompletos extends StatefulWidget {
  ResultadosCompletos({Key key}) : super(key: key);
  @override
  _ResultadosCompletos createState() => new _ResultadosCompletos();
}

Color colorCalida1 = Colors.white;
Color colorCalida2 = Colors.white;
Color colorFria1 = Colors.white;
Color colorFria2 = Colors.white;
String porcentajeFria = "";
String porcentajeCalida = "";
String texto = "";
double leftBorder;
Metodos m = Metodos();
int colorPaleta = 0;

class _ResultadosCompletos extends State<ResultadosCompletos> {
  @override
  Widget build(BuildContext context) {
    if (m.paletaColorString() == "Fria") {
      colorPaleta = 1;
    } else {
      colorPaleta = 2;
    }

    if (colorPaleta == 1) {
      colorCalida1 = Colors.white;
      colorCalida2 = Colors.white;
      colorFria1 = Colors.blue[800];
      colorFria2 = Colors.lightBlue;
      porcentajeCalida = "";
      porcentajeFria = m.paletaColorNumero().toString() + "%";
      texto = "FRIA";
      leftBorder = 130;
    }

    if (colorPaleta == 2) {
      colorCalida1 = Colors.orange[600];
      colorCalida2 = Colors.red[700];
      colorFria1 = Colors.white;
      colorFria2 = Colors.white;
      porcentajeCalida = m.paletaColorNumero().toString() + "%";
      porcentajeFria = "";
      texto = "CÁLIDA";
      leftBorder = 120;
    }

    return new Scaffold(
      body: ListView(
        children: [
          barraNavegacion(context),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: boxEstilo(),
          ),
          temperaturaColor(),
          if (colorPaleta == 1) boxPaletaFria(),
          if (colorPaleta == 2) boxPaletaCalida(),
          Padding(
              padding: EdgeInsets.only(top: 10, bottom: 30, left: leftBorder),
              child: Row(children: [
                Text(
                  'PALETA  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 68, 46),
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  texto,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 68, 46),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ])),
          boxCara(),
          Padding(padding: EdgeInsets.only(top: 20))
        ],
      ),
    );
  }
}

Widget temperaturaColor() {
  return Stack(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 35, bottom: 20),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 35, top: 35)),
                    Text(
                      'TEMPERATURA',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 68, 46),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 60)),
                    Text(
                      'DE COLOR',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 68, 46),
                          fontSize: 20,
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
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                              //EL GRADIENTE
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8,
                                    0.0), // 10% of the width, so there are ten blinds.
                                colors: [colorCalida1, colorCalida2],
                              ),
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              porcentajeCalida,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35),
                      child: Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8,
                                  0.0), // 10% of the width, so there are ten blinds.
                              colors: [colorFria1, colorFria2],
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              porcentajeFria,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 55),
                      child: Text(
                        'CÁLIDA ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 92, 68, 46),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 55),
                      child: Text(
                        'FRIA',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 92, 68, 46),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
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
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                ' ESTILO',
                style: TextStyle(
                  color: Color(0xFF5C4438),
                  fontSize: 20,
                ),
              ),
              Text(
                m.estilo(),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: new Color.fromRGBO(184, 71, 57, 1),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(62, 112, 49, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(163, 153, 68, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(27, 114, 133, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(246, 177, 99, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(79, 62, 55, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 20)),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: new Color.fromRGBO(0, 99, 167, 1),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(72, 206, 169, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(64, 201, 113, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(217, 54, 79, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(231, 190, 124, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(237, 119, 115, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 20)),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: new Color.fromRGBO(32, 87, 167, 1),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(96, 89, 167, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(26, 168, 86, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(211, 54, 63, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(240, 120, 190, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 20)),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: new Color.fromRGBO(124, 127, 178, 1),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(179, 93, 136, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(242, 119, 137, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(253, 196, 215, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(91, 194, 217, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 0)),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: new Color.fromRGBO(190, 188, 176, 1),
                  border: Border.all(color: Colors.black, width: 1),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 20)),
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'FORMA DEL ROSTRO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF5C4438),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                m.traductorCaraForma(resul.cara, 90),
                Text(m.traductorCaraPalabra(resul.cara),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF5C4438),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'FORMA DEL CUERPO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF5C4438),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                m.traductorCuerpoForma(resul.forma, 90),
                Text(m.traductorCuerpoPalabra(resul.forma),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF5C4438),
                        fontSize: 18,
                        fontWeight: FontWeight.bold))
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
