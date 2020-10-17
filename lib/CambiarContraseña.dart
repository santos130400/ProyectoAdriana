import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:prueba_apliacion/MenuPrincipal.dart';
import 'package:prueba_apliacion/Test/Hola.dart';
import 'package:prueba_apliacion/main.dart';

class Cambio extends StatefulWidget {
  @override
  _CambioState createState() => _CambioState();
}

class _CambioState extends State<Cambio> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _controladorCorreo = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double tamano = 220;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        key: _formkey,
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage('assets/Fondo.png'), fit: BoxFit.cover)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              textoUnete(),
              textoUnete1(),
              Stack(children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Container(
                        height: tamano,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffffeed9),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[400],
                                  blurRadius: 4,
                                  offset: Offset(0, 5))
                            ])),
                  ),
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  cajaUsuario(),
                  //boton ingresar
                  Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[200],
                                  blurRadius: 0,
                                  offset: Offset(0, 3))
                            ],
                            color: const Color(0xFFFFC6A5),
                            borderRadius: BorderRadius.circular(30)),
                        child: RaisedButton(
                            color: const Color(0xFFFFC6A5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text('ENVIAR CORREO',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF5C4438),
                                    fontSize: 25)),
                            onPressed: () async {
                              if (_formkey.currentState.validate()) {
                                _cambiarContra();
                              }
                            }),
                      )),
                  olvidasteContrasena(),
                  volver()
                ]),
              ]),
            ])),
      ),
    );
  }

  void _cambiarContra() async {
    try {
      _auth.sendPasswordResetEmail(email: _controladorCorreo.text);
      Navigator.of(context).pushNamed('/inicio');
    } catch (e) {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(
          'error',
          textAlign: TextAlign.center,
        ),
      ));
      print(e.message);
    }
  }

  Widget cajaUsuario() {
    return Stack(
      children: [
        Container(
          child: Stack(children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 40,
                ),
                child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 1))
                        ],
                        border: Border.all(
                            width: 2, color: const Color(0xFFFFC6A5)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 0),
                  child: textoCorreoOUsuario()),
            ),
          ]),
        ),
        Padding(
            padding: EdgeInsets.only(top: 30, right: 80),
            child: Stack(children: [
              Center(
                child: Container(
                    height: 20,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffffc6a5),
                    )),
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 3, left: 0),
                    child: Text(
                      'Correo electrónico',
                      style: TextStyle(color: const Color(0xFF5C4438)),
                    )),
              )
            ]))
      ],
    );
  }

  Widget olvidasteContrasena() {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          'Se enviara un correo para el cambio de contraseña',
          style: TextStyle(
              color: const Color(0xFF5C4438),
              fontWeight: FontWeight.bold,
              fontSize: 12),
        ));
  }

  Widget volver() {
    return GestureDetector(
      child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Volver al inicio de sesión',
            style: TextStyle(
                color: const Color(0xFF5C4438),
                fontWeight: FontWeight.bold,
                fontSize: 15),
          )),
      onTap: () {
        Navigator.of(context).pushNamed('/inicio');
      },
    );
  }

  Widget textoCorreoOUsuario() {
    return Center(
      child: Container(
        width: 300,
        color: Color(0x00000000),
        child: TextFormField(
            controller: _controladorCorreo,
            validator: (String entrada) {
              if (entrada.isEmpty) {
                setState(() {
                  tamano = 240;
                });
                return 'Por favor escriba su correo';
              }
              return null;
            },
            decoration: InputDecoration(
                icon: Icon(
                  Icons.mail_outline,
                  color: const Color(0xFF5C4438),
                ),
                border: InputBorder.none)),
      ),
    );
  }

  Widget textoUnete() {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text('CAMBIO DE',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF5C4438),
              fontSize: 55)),
    ));
  }

  Widget textoUnete1() {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text('CONTRASEÑA',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF5C4438),
              fontSize: 55)),
    ));
  }
}
