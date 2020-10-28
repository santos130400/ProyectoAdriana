import 'package:flutter/material.dart';

class Metodos {
  String traductorPielPalabra(int codigo) {
    String i = '';
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
        i =Color.fromARGB(255, 170, 136, 102);
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

  String traductorCaraParabra(int codigo){
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
}
