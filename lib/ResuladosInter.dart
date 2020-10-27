import 'package:flutter/material.dart';
import 'package:prueba_apliacion/PREFABS/Metodos.dart';
import 'package:prueba_apliacion/main.dart';

class ResultadosInter extends StatefulWidget {
  ResultadosInter(int txt1) {
    txt = txt1;
  }
  @override
  _ResultadosInterState createState() => _ResultadosInterState();
}

int txt = 0;
String titulo = '';
Metodos m = new Metodos();

class _ResultadosInterState extends State<ResultadosInter> {
  @override
  Widget build(BuildContext context) {
    Widget atrib;
    switch (txt) {
      //Maquillaje
      case 1:
        titulo = 'OJOS';
        break;
      case 2:
        titulo = 'LABIOS';
        break;
      case 3:
        titulo = 'PIEL';
        break;
      case 4:
        titulo = 'PARTE SUPERIOR';
        break;
      case 5:
        titulo = 'PARTE INFERIOR';
        break;
      case 6:
        titulo = 'ZAPATOS';
        break;
      case 7:
        titulo = 'VESTIDOS';
        break;
      case 8:
        titulo = 'ROPA INTERIOR';
        break;
      case 9:
        titulo = 'COLLARES Y ARETES';
        break;
      case 10:
        titulo = 'SOMBREROS';
        break;
      case 11:
        titulo = 'PULSERAS Y RELOJES';
        break;
      case 12:
        titulo = 'LENTES';
        break;
      case 13:
        titulo = 'BOLSOS Y CARTERAS';
        break;
      case 14:
        titulo = 'CINTURONES';
        break;
      case 15:
        titulo = 'CORTES Y PEINADOS';
        break;
      case 16:
        titulo = 'COLOR Y EFECTOS';
        break;
      default:
    }
    if (txt >= 1 && txt <= 3) {
      atrib = Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFFFEED9),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('COLOR DEL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 68, 46),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    Text('ROSTRO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 68, 46),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        shape: BoxShape.circle,
                        color: m.traductorPielColor(resul.piel)),
                  ),
                  Text(m.traductorPielPalabra(resul.piel),
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ),
      );
    } else if (txt >= 4 && txt <= 8) {
      atrib = Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFFFEED9),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('FORMA DEL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 68, 46),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    Text('CUERPO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 68, 46),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  m.traductorCuerpoForma(resul.forma) != null
                      ? Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: m.traductorCuerpoForma(resul.forma),
                              color: Color(0xFFEBA47A),
                              border: Border.all(
                                  color: Color.fromARGB(255, 92, 68, 46),
                                  width: 2)),
                        )
                      : CustomPaint(
                          size: Size(50, 50), painter: DrawTriangleShape()),
                  Text(m.traductorCuerpoPalabra(resul.forma), style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ),
      );
    } else if (txt >= 9 && txt <= 14) {
      atrib = Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFFFEED9),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('FORMA DEL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 68, 46),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    Text('ROSTRO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 68, 46),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                  ),
                  Text('NEGRO', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ),
      );
    } else if (txt == 15) {
      atrib = Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFFFEED9),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('COLOR DEL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 68, 46),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    Text('PELO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 68, 46),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                  ),
                  Text('NEGRO', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ),
      );
    } else if (txt == 16) {
      atrib = Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFFFEED9),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 4, offset: Offset(0, 4))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('FORMA DEL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 68, 46),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    Text('ROSTRO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 92, 68, 46),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                  ),
                  Text('NEGRO', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            )
          ],
        ),
      );
    }
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            barraNavegacion(context),
            Container(
              height: 100,
              margin: EdgeInsets.symmetric(
                vertical: 28,
                horizontal: 29,
              ),
              alignment: Alignment.center,
              child: atrib,
            )
          ],
        ),
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
            Navigator.of(context).pop();
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
                  titulo,
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

class DrawTriangleShape extends CustomPainter {
  Paint painter;

  DrawTriangleShape() {
    painter = Paint()
      ..color = Color(0xFFEBA47A)
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
