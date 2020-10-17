import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:prueba_apliacion/MenuPrincipal.dart';
import 'package:prueba_apliacion/Test/Hola.dart';
import 'package:prueba_apliacion/main.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _controladorCorreo = TextEditingController();
  final TextEditingController _controladorContrasena = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double tamano = 280;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        key: _formkey,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage('assets/Fondo.png'), fit: BoxFit.cover)),
            child: ListView(children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child:
                      Image.asset('assets/logo.png', height: 150, width: 300),
                ),
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
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        cajaUsuario(),
                        cajaPasword(),
                        //boton ingresar
                        Padding(
                            padding: const EdgeInsets.only(top: 40),
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
                                  child: Text('INGRESAR',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xFF5C4438),
                                          fontSize: 25)),
                                  onPressed: () async {
                                    if (_formkey.currentState.validate()) {
                                      iniciarSesion(context);
                                    }
                                  }),
                            )),
                        olvidasteContrasena(),
                      ]),
                ]),
                textoCrearCuenta(),
                //boton registro
                Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 20),
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
                          child: Text('REGÍSTRATE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF5C4438),
                                  fontSize: 25)),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/registro');
                          }),
                    ))
              ]),
            ])),
      ),
    );
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

  Widget cajaPasword() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Stack(
          children: [
            Container(
              child: Stack(children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20,
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
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 0),
                      child: textoContrasena()),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 80),
              child: Stack(
                children: [
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
                        padding: const EdgeInsets.only(top: 3, left: 10),
                        child: Text(
                          'Contraseña',
                          style: TextStyle(color: const Color(0xFF5C4438)),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget olvidasteContrasena() {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GestureDetector(
          child: Text(
            'Olvidé mi contraseña',
            style: TextStyle(
                color: const Color(0xFF5C4438),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/cambioContra');
          },
        ));
  }

  Widget textoCrearCuenta() {
    return Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Text(
            '¿No tienes aún una cuenta?',
            textAlign: TextAlign.center,
            style: TextStyle(color: const Color(0xFF5C4438)),
          )),
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
                  tamano = 320;
                });
                return 'Por favor escriba su correo';
              } else {
                setState(() {
                  tamano = 300;
                });
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

  Widget textoContrasena() {
    return Container(
      width: 300,
      color: Color(0x00000000),
      child: TextFormField(
        controller: _controladorContrasena,
        validator: (input) {
          if (input.isEmpty) {
            setState(() {
              tamano = 320;
            });
            return 'Escriba una contraseña';
          } else {
            setState(() {
              tamano = 300;
            });
          }
          return null;
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.lock_outline, color: const Color(0xFF5C4438)),
        ),
        obscureText: true,
      ),
    );
  }

  void iniciarSesion(BuildContext context) async {
    try {
      final User usuario = (await _auth.signInWithEmailAndPassword(
              email: _controladorCorreo.text,
              password: _controladorContrasena.text))
          .user;
      if (!usuario.emailVerified) {
        await usuario.sendEmailVerification();
      }
      Navigator.of(context).pushNamed('/menu');
      nombreid.setNombre = usuario.displayName;
    } catch (e) {
      if (e.toString() ==
          '[firebase_auth/network-request-failed] A network error (such as timeout, interrupted connection or unreachable host) has occurred.') {
        _scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text(
            'No te puedes conectar a la aplicación sin conexion a internet',
            textAlign: TextAlign.center,
          ),
        ));
        print(e.message);
      } else {
        _scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text(
            e.toString(),
            textAlign: TextAlign.center,
          ),
        ));
        print(e.message);
      }
    }
  }
}
