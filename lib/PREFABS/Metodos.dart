import 'package:flutter/material.dart';
import 'package:prueba_apliacion/main.dart';

class Metodos {
  String traductorPielPalabra(int codigo) {
    String i = "";
    switch (codigo) {
      case 1:
        i = 'TOFEE';
        break;
      case 2:
        i = 'COCOA';
        break;
      case 3:
        i = 'DOLCE';
        break;
      case 4:
        i = 'CHAI';
        break;
      case 5:
        i = 'HONEY';
        break;
      case 6:
        i = 'VANILLA';
        break;
      case 7:
        i = 'CREAM';
        break;
      case 8:
        i = 'LIGHT';
        break;
      case 9:
        i = 'CLOUD';
        break;
      default:
    }
    return i;
  }

  Color traductorPielColor(int codigo) {
    Color i = Colors.white;
    switch (codigo) {
      case 1:
        i = Color.fromARGB(255, 73, 33, 5);
        break;
      case 2:
        i = Color.fromARGB(
          255,
          101,
          70,
          48,
        );
        break;
      case 3:
        i = Color.fromARGB(255, 141, 85, 36);
        break;
      case 4:
        i = Color.fromARGB(255, 198, 134, 66);
        break;
      case 5:
        i = Color.fromARGB(255, 224, 166, 105);
        break;
      case 6:
        i = Color.fromARGB(255, 241, 194, 125);
        break;
      case 7:
        i = Color.fromARGB(255, 255, 219, 172);
        break;
      case 8:
        i = Color.fromARGB(255, 255, 233, 205);
        break;
      case 9:
        i = Color.fromARGB(255, 255, 246, 234);
        break;
      default:
    }
    return i;
  }

  String traductorPeloPalabra(int codigo) {
    String i = '';
    switch (codigo) {
      case 1:
        i = 'CREMA';
        break;
      case 2:
        i = 'BASE';
        break;
      case 3:
        i = 'CLARO';
        break;
      case 4:
        i = 'RUBIO';
        break;
      case 5:
        i = 'NARANJA';
        break;
      case 6:
        i = 'ROJIZO';
        break;
      case 7:
        i = 'VINOTINTO';
        break;
      case 8:
        i = 'NEGRO';
        break;
      case 9:
        i = 'GRIS';
        break;
      default:
    }
    return i;
  }

  Color traductorPeloColor(int codigo) {
    Color i = Colors.white;
    switch (codigo) {
      case 1:
        i = Color.fromARGB(255, 222, 190, 153);
        break;
      case 2:
        i = Color.fromARGB(255, 170, 136, 102);
        break;
      case 3:
        i = Color.fromARGB(255, 213, 176, 113);
        break;
      case 4:
        i = Color.fromARGB(255, 239, 197, 97);
        break;
      case 5:
        i = Color.fromARGB(255, 192, 99, 53);
        break;
      case 6:
        i = Color.fromARGB(255, 154, 51, 0);
        break;
      case 7:
        i = Color.fromARGB(255, 79, 26, 0);
        break;
      case 8:
        i = Color.fromARGB(255, 31, 10, 0);
        break;
      case 9:
        i = Color.fromARGB(255, 196, 193, 186);
        break;
      default:
    }
    return i;
  }

  String traductorCaraPalabra(int codigo) {
    String i = '';
    switch (codigo) {
      case 1:
        i = 'ALARGADA';

        break;
      case 2:
        i = 'TRIANGULO INVERTIDO';
        break;
      case 3:
        i = 'OVALO';
        break;
      case 4:
        i = 'CIRCULO';
        break;
      case 5:
        i = 'CUADRADO';
        break;
      case 6:
        i = 'TRIANGULO';
        break;

      default:
    }
    return i;
  }

  String traductorCuerpoPalabra(int codigo) {
    String i = '';
    switch (codigo) {
      case 1:
        i = 'CUADRADA';

        break;
      case 2:
        i = 'OVALO';
        break;
      case 3:
        i = 'TRIANGULAR';
        break;
      case 4:
        i = 'RELOJ';
        break;
      case 5:
        i = 'TRIANGULO INVERTIDO';
        break;

      default:
    }
    return i;
  }

  Container traductorCaraForma(int codigo, double tamano) {
    Container i = Container();
    switch (codigo) {
      case 1:
        i = Container(
          height: tamano,
          width: tamano / 2,
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 198, 165, 1),
              border: Border.all(
                  color: Color.fromRGBO(255, 198, 165, 1), width: 2)),
        );

        break;
      case 2:
        i = Container(
            child: CustomPaint(
                size: Size(tamano, tamano),
                painter:
                    DrawTriangInverShape(Color.fromRGBO(255, 198, 165, 1))));
        break;
      case 3:
        i = Container(
          height: tamano,
          width: tamano / 2,
          decoration: new BoxDecoration(
            color: Color.fromRGBO(255, 198, 165, 1),
            borderRadius:
                new BorderRadius.all(Radius.elliptical(tamano / 2, tamano)),
          ),
        );
        break;
      case 4:
        i = Container(
          height: tamano,
          width: tamano,
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 198, 165, 1),
              shape: BoxShape.circle,
              border: Border.all(
                  color: Color.fromRGBO(255, 198, 165, 1), width: 2)),
        );
        break;
      case 5:
        i = Container(
          height: tamano,
          width: tamano,
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 198, 165, 1),
              border: Border.all(
                  color: Color.fromRGBO(255, 198, 165, 1), width: 2)),
        );
        break;
      case 6:
        i = Container(
            child: CustomPaint(
                size: Size(tamano, tamano),
                painter: DrawTriangleShape(Color.fromRGBO(255, 198, 165, 1))));
        break;

      default:
    }
    return i;
  }

  Container traductorCuerpoForma(int codigo, double tamano) {
    Container i = Container();
    switch (codigo) {
      case 1:
        i = Container(
          height: tamano,
          width: tamano,
          decoration: BoxDecoration(
              color: Color(0xFFEBA47A),
              border: Border.all(
                  color: Color.fromRGBO(255, 198, 165, 1), width: 2)),
        );

        break;
      case 2:
        i = Container(
          height: tamano,
          width: tamano / 2,
          decoration: new BoxDecoration(
            color: Color.fromRGBO(255, 198, 165, 1),
            borderRadius:
                new BorderRadius.all(Radius.elliptical(tamano / 2, tamano)),
          ),
        );
        break;
      case 3:
        i = Container(
            child: CustomPaint(
                size: Size(tamano, tamano),
                painter: DrawTriangleShape(Color.fromRGBO(255, 198, 165, 1))));
        break;
      case 4:
        i = Container(
            child: CustomPaint(
                size: Size(tamano, tamano),
                painter: DrawRelojShape(Color.fromRGBO(255, 198, 165, 1))));
        break;
      case 5:
        i = Container(
            child: CustomPaint(
                size: Size(tamano, tamano),
                painter:
                    DrawTriangInverShape(Color.fromRGBO(255, 198, 165, 1))));
        break;
      default:
    }
    return i;
  }

  String paletaColorString() {
    int fria = 0;
    int calida = 0;

    if (resul.piel >= 1 && resul.piel <= 4) {
      calida = calida + 55;
    }

    if (resul.piel >= 5 && resul.piel <= 9) {
      fria = fria + 55;
    }

    if (resul.ojos >= 0 && resul.ojos <= 3) {
      calida = calida + 20;
    }

    if (resul.ojos >= 4 && resul.ojos <= 7) {
      fria = fria + 20;
    }

    if (resul.ojeras == 1) {
      fria = fria + 10;
    }

    if (resul.ojeras == 2) {
      calida = calida + 10;
    }

    if (resul.sol == 1) {
      fria = fria + 7;
    }

    if (resul.sol == 2) {
      calida = calida + 7;
    }

    if (resul.labios == 1) {
      calida = calida + 5;
    }

    if (resul.labios == 2) {
      fria = fria + 5;
    }

    if (resul.pelo == 8 ||
        resul.pelo == 9 ||
        resul.pelo == 4 ||
        resul.pelo == 3 ||
        resul.pelo == 7) {
      fria = fria + 3;
    }

    if (resul.pelo == 6 ||
        resul.pelo == 5 ||
        resul.pelo == 1 ||
        resul.pelo == 2) {
      calida = calida + 3;
    }
    if (fria > calida) {
      return 'Fria';
    } else if (calida > fria) {
      return 'Calida';
    } else {
      return 'Error';
    }
  }

  int paletaColorNumero() {
    int fria = 0;
    int calida = 0;

    if (resul.piel >= 1 && resul.piel <= 4) {
      calida = calida + 55;
    }

    if (resul.piel >= 5 && resul.piel <= 9) {
      fria = fria + 55;
    }

    if (resul.ojos >= 0 && resul.ojos <= 3) {
      calida = calida + 20;
    }

    if (resul.ojos >= 4 && resul.ojos <= 7) {
      fria = fria + 20;
    }

    if (resul.ojeras == 1) {
      fria = fria + 10;
    }

    if (resul.ojeras == 2) {
      calida = calida + 10;
    }

    if (resul.sol == 1) {
      fria = fria + 7;
    }

    if (resul.sol == 2) {
      calida = calida + 7;
    }

    if (resul.labios == 1) {
      calida = calida + 5;
    }

    if (resul.labios == 2) {
      fria = fria + 5;
    }

    if (resul.pelo == 8 ||
        resul.pelo == 9 ||
        resul.pelo == 4 ||
        resul.pelo == 3 ||
        resul.pelo == 7) {
      fria = fria + 3;
    }

    if (resul.pelo == 6 ||
        resul.pelo == 5 ||
        resul.pelo == 1 ||
        resul.pelo == 2) {
      calida = calida + 3;
    }
    if (fria > calida) {
      return fria;
    } else if (calida > fria) {
      return calida;
    } else {
      return 0;
    }
  }

  String estilo() {
    int romantico = 0;
    int elegante = 0;
    int casual = 0;
    int seductor = 0;
    int dramatico = 0;

//VALORES
    if (resul.valores == 1) {
      elegante = elegante + 14;
    }

    if (resul.valores == 2 || resul.valores == 5) {
      elegante = elegante + 14;
    }

    if (resul.valores == 4) {
      casual = casual + 14;
    }

    if (resul.valores == 7) {
      seductor = seductor + 14;
    }

    if (resul.valores == 6 || resul.valores == 3) {
      dramatico = dramatico + 14;
    }

//DETALLES Y ACCESORIOS
    if (resul.acces == 1) {
      romantico = romantico + 40;
    }

    if (resul.acces == 2 || resul.acces == 5) {
      elegante = elegante + 40;
    }

    if (resul.acces == 4) {
      casual = casual + 40;
    }

    if (resul.acces == 6) {
      seductor = seductor + 40;
    }

    if (resul.acces == 3 || resul.acces == 7) {
      dramatico = dramatico + 40;
    }

//PALETA PREFERIDA
    if (resul.paleta == 1) {
      romantico = romantico + 10;
    }

    if (resul.paleta == 2 || resul.paleta == 5) {
      elegante = elegante + 10;
    }

    if (resul.paleta == 4) {
      casual = casual + 10;
    }

    if (resul.paleta == 6) {
      seductor = seductor + 10;
    }

    if (resul.paleta == 3 || resul.paleta == 7) {
      dramatico = dramatico + 10;
    }

//TEJIDOS

    if (resul.tejido == 1) {
      romantico = romantico + 15;
    }

    if (resul.tejido == 2 || resul.tejido == 5) {
      elegante = elegante + 15;
    }

    if (resul.tejido == 4) {
      casual = casual + 15;
    }

    if (resul.tejido == 7) {
      seductor = seductor + 15;
    }

    if (resul.tejido == 3 || resul.tejido == 6) {
      dramatico = dramatico + 15;
    }

//CARACTERISTICAS

    if (resul.carac == 1) {
      romantico = romantico + 21;
    }

    if (resul.carac == 2 || resul.carac == 5) {
      elegante = elegante + 21;
    }

    if (resul.carac == 4) {
      casual = casual + 21;
    }

    if (resul.carac == 7) {
      seductor = seductor + 21;
    }

    if (resul.carac == 3 || resul.carac == 6) {
      dramatico = dramatico + 21;
    }
    if (romantico > dramatico &&
        romantico > seductor &&
        romantico > casual &&
        romantico > elegante) {
      print('ROMANTICO ' + romantico.toString());
      print('DRAMATICO ' + dramatico.toString());
      print('SEDUCTOR ' + seductor.toString());
      print('CASUAL ' + casual.toString());
      print('ELEGANTE ' + elegante.toString());
      return 'ROMANTICO';
    } else if (dramatico > romantico &&
        dramatico > seductor &&
        dramatico > casual &&
        dramatico > elegante) {
      print('ROMANTICO ' + romantico.toString());
      print('DRAMATICO ' + dramatico.toString());
      print('SEDUCTOR ' + seductor.toString());
      print('CASUAL ' + casual.toString());
      print('ELEGANTE ' + elegante.toString());
      return 'DRAMATICO';
    } else if (seductor > romantico &&
        seductor > dramatico &&
        seductor > casual &&
        seductor > elegante) {
      print('ROMANTICO ' + romantico.toString());
      print('DRAMATICO ' + dramatico.toString());
      print('SEDUCTOR ' + seductor.toString());
      print('CASUAL ' + casual.toString());
      print('ELEGANTE ' + elegante.toString());
      return 'SEDUCTOR';
    } else if (casual > romantico &&
        casual > dramatico &&
        casual > seductor &&
        casual > elegante) {
      print('ROMANTICO ' + romantico.toString());
      print('DRAMATICO ' + dramatico.toString());
      print('SEDUCTOR ' + seductor.toString());
      print('CASUAL ' + casual.toString());
      print('ELEGANTE ' + elegante.toString());
      return 'CASUAL';
    } else if (elegante > romantico &&
        elegante > dramatico &&
        elegante > seductor &&
        elegante > casual) {
      print('ROMANTICO ' + romantico.toString());
      print('DRAMATICO ' + dramatico.toString());
      print('SEDUCTOR ' + seductor.toString());
      print('CASUAL ' + casual.toString());
      print('ELEGANTE ' + elegante.toString());
      return 'ELEGANTE';
    } else {
      return 'ERROR';
    }
  }
}

class DrawTriangleShape extends CustomPainter {
  Paint painter;

  DrawTriangleShape(Color c) {
    painter = Paint()
      ..color = c
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

class DrawTriangInverShape extends CustomPainter {
  Paint painter;

  DrawTriangInverShape(Color c) {
    painter = Paint()
      ..color = c
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height);
    path.moveTo(0, 0);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DrawRelojShape extends CustomPainter {
  Paint painter;

  DrawRelojShape(Color c) {
    painter = Paint()
      ..color = c
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height / 2);
    path.lineTo(0, 0);
    path.moveTo(size.width / 2, size.height / 2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, size.height / 2);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
