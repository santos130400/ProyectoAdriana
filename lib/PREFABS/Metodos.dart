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

  String traductorCuerpoPalabra(int codigo) {
    String i = '';
    switch (codigo) {
      case 1:
        i = 'TRIANGULAR';

        break;
      case 2:
        i = 'CUADRADA';
        break;
      case 3:
        i = 'REDONDA';
        break;

      default:
    }
    return i;
  }

  String traductorCaraParabra(int codigo) {
    String i = '';
    switch (codigo) {
      case 1:
        i = 'CUADRADA';

        break;
      case 2:
        i = 'CIRCULAR';
        break;
      case 3:
        i = 'TRIANGULAR';
        break;

      default:
    }
    return i;
  }

  BoxShape traductorCaraForma(int codigo) {
    BoxShape i = BoxShape.rectangle;
    switch (codigo) {
      case 2:
        i = BoxShape.circle;

        break;
      case 1:
        i = BoxShape.rectangle;
        break;
      case 3:
        i = null;
        break;

      default:
    }
    return i;
  }

  BoxShape traductorCuerpoForma(int codigo) {
    BoxShape i = BoxShape.rectangle;
    switch (codigo) {
      case 3:
        i = BoxShape.circle;

        break;
      case 2:
        i = BoxShape.rectangle;
        break;
      case 1:
        i = null;
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
      return 'ROMANTICO';
    } else if (dramatico > romantico &&
        dramatico > seductor &&
        dramatico > casual &&
        dramatico > elegante) {
      return 'DRAMATICO';
    } else if (seductor > romantico &&
        seductor > dramatico &&
        seductor > casual &&
        seductor > elegante) {
      return 'SEDUCTOR';
    } else if (casual > romantico &&
        casual > dramatico &&
        casual > seductor &&
        casual > elegante) {
      return 'CASUAL';
    } else if (elegante > romantico &&
        elegante > dramatico &&
        elegante > seductor &&
        elegante > casual) {
      return 'ELEGANTE';
    } else {
      return 'ERROR';
    }
  }
}
