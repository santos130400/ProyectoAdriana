import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:prueba_apliacion/main.dart';

int radioItem = 0;

class Preferencias extends StatefulWidget {
  Preferencias({Key key}) : super(key: key);
  @override
  _Preferencias createState() => new _Preferencias();
}

class _Preferencias extends State<Preferencias> {
  String IdUnico = nombreid.getId;
  final CollectionReference documentoUsuario =
      FirebaseFirestore.instance.collection('infoYResultados');
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    radioItem = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        body: Stack(
          children: [
            ListView(
              children: [
                barraNavegacion(context),
                texto(),
                RadioListTile(
                  groupValue: radioItem,
                  title: Text(
                      'Quiero conocer los resultados de mi test y mis recomendaciones inmediatamente'),
                  value: 0,
                  activeColor: new Color.fromRGBO(92, 68, 56, 1),
                  onChanged: (val) {
                    setState(() {
                      radioItem = val;
                    });
                  },
                ),
                RadioListTile(
                  groupValue: radioItem,
                  title: Text(
                      'Deseo que Adriana revise mi Test para obtener resultados mucho más personalizados (*premium)'),
                  value: 1,
                  activeColor: new Color.fromRGBO(92, 68, 56, 1),
                  onChanged: (val) {
                    setState(() {
                      radioItem = val;
                    });
                  },
                ),
                Container(
                  height: 210,
                ),
              ],
            ),
            Container(
              height: double.infinity,
              alignment: Alignment.bottomCenter,
              child: continuar(context),
            )
          ],
        ));
  }

  Future<void> guardarDatos() async {
    return await documentoUsuario
        .doc(IdUnico)
        .update({
          'piel': resul.getPiel,
          'sol': resul.getSol,
          'labios': resul.getLabios,
          'pelo': resul.getPelo,
          'ojos': resul.getOjos,
          'ojeras': resul.getOjeras,
          'cara': resul.getCara,
          'estatura': resul.getEstatura,
          'peso': resul.getPeso,
          'forma': resul.getForma,
          'valores': resul.getValores,
          'acces': resul.getAcces,
          'paleta': resul.getPaleta,
          'tejido': resul.getTejido,
          'carac': resul.getCarac,
          'pago': resul.getPago,
        })
        .then((value) => _scaffoldKey.currentState.showSnackBar(SnackBar(
              content: Text(
                'Actualizacion de la base de datos exitosa',
                textAlign: TextAlign.center,
              ),
            )))
        .catchError((error) => _scaffoldKey.currentState.showSnackBar(SnackBar(
              content: Text(
                'Actualizacion de la base de datos Fallida',
                textAlign: TextAlign.center,
              ),
            )));
  }

  Widget continuar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
          height: 63.0,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          decoration:
              new BoxDecoration(color: new Color.fromRGBO(255, 198, 165, 1)),
          child: FlatButton(
              onPressed: () {
                resul.setPago = radioItem;
                guardarDatos();
                Navigator.of(context).pushNamed('/cargando');
              },
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'FINALIZAR EL TEST',
                      textAlign: TextAlign.center,
                      textScaleFactor: 2.0,
                      style:
                          TextStyle(color: new Color.fromRGBO(92, 68, 56, 1)),
                    ),
                  ]))),
    );
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
                      color: Colors.black,
                      blurRadius: 4,
                      offset: Offset(0, 0.5))
                ])),
        IconButton(
            icon: const Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              Navigator.of(context).pushNamed('/caracter');
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
                    'Has concluido',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            //row
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
                        color: const Color(0xFF5C4438),
                        borderRadius: BorderRadius.circular(71),
                        border: Border.all(color: Colors.black, width: 1),
                      )),

                  //bolita
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      width: 21,
                      height: 10,
                      decoration: BoxDecoration(
                          color: const Color(0xFF5C4438),
                          borderRadius: BorderRadius.circular(71),
                          border: Border.all(color: Colors.black, width: 1)),
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
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                        border: Border.all(color: Colors.black, width: 1),
                      ),
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
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  void iconButtonPressed() {}

  Widget texto() {
    return Container(
        padding:
            const EdgeInsets.only(left: 70, right: 70, top: 30, bottom: 30),
        child: Column(children: <Widget>[
          Center(
            child: Text(
              'CUENTANOS QUE OPCIÓN PREFIERES',
              textAlign: TextAlign.center,
              textScaleFactor: 2.0,
              style: TextStyle(
                color: new Color.fromRGBO(92, 68, 56, 1),
              ),
            ),
          ),
        ]));
  }
}
