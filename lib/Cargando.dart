import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Cargando extends StatefulWidget {
  @override
  _CargandoState createState() => _CargandoState();
}

class _CargandoState extends State<Cargando> {
  String IdUnico = nombreid.getId;
  final CollectionReference documentoUsuario =
      FirebaseFirestore.instance.collection('infoYResultados');
  String rutaFoto;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buscaFoto().whenComplete(() {
      Navigator.of(context).pushNamed('/menu');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBA47A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('CARGANDO')],
        ),
      ),
    );
  }

  Future<void> buscaFoto() async {
    await documentoUsuario
        .doc(IdUnico)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        try {
          dynamic elDato = documentSnapshot.get(FieldPath(['foto']));
          nombreid.setFoto = elDato;
        } on StateError catch (e) {
          print('Error!');
        }
      } else {
        print('Ese documento no existe en la base de datos');
      }
    });
  }
}
