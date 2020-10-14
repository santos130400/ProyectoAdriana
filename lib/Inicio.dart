import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Inicio extends StatelessWidget {
  String _correo, _contrasena;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          height: 280,
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
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/menu');
                                  }),
                            )),
                        olvidasteContrasena(),
                        textoCrearCuenta(),
                        //boton registro
                        Padding(
                            padding: const EdgeInsets.only(top: 5),
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
                                    Navigator.of(context)
                                        .pushNamed('/registro');
                                  }),
                            ))
                      ]),
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
                                style:
                                    TextStyle(color: const Color(0xFF5C4438)),
                              )),
                        )
                      ])),
                  Padding(
                    padding: EdgeInsets.only(top: 100, right: 80),
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
                                style:
                                    TextStyle(color: const Color(0xFF5C4438)),
                              )),
                        )
                      ],
                    ),
                  ),
                ])
              ]),
            ])),
      ),
    );
  }

  Widget cajaUsuario() {
    return Stack(children: [
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
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 1))
                  ],
                  border: Border.all(width: 2, color: const Color(0xFFFFC6A5)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
      Center(
        child: Padding(
            padding: EdgeInsets.only(top: 40, left: 0),
            child: textoCorreoOUsuario()),
      ),
    ]);
  }

  Widget cajaPasword() {
    return Stack(children: [
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
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 1))
                  ],
                  border: Border.all(width: 2, color: const Color(0xFFFFC6A5)),
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
      Center(
        child: Padding(
            padding: EdgeInsets.only(top: 20, left: 0),
            child: textoContrasena()),
      ),
    ]);
  }

  Widget olvidasteContrasena() {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          'Olvidé mi contraseña',
          style: TextStyle(
              color: const Color(0xFF5C4438),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ));
  }

  Widget textoCrearCuenta() {
    return Padding(
        padding: const EdgeInsets.only(top: 100, right: 100),
        child: Text(
          '¿No tienes aún una cuenta?',
          style: TextStyle(color: const Color(0xFF5C4438)),
        ));
  }

  Widget textoCorreoOUsuario() {
    return Center(
      child: Container(
        width: 300,
        color: Color(0x00000000),
        child: TextFormField(
            // ignore: missing_return
            validator: (entrada) {
              if (entrada.isEmpty) {
                return 'Por favor escriba su correo';
              }
            },
            onSaved: (entrada) {
              _correo = entrada;
            },
            textAlign: TextAlign.center,
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
    return Center(
      child: Container(
        width: 300,
        color: Color(0x00000000),
        child: TextFormField(
          // ignore: missing_return
          validator: (input) {
            if (input.length < 8) {
              return 'La contraseña es minimo de 8 caracteres';
            }
          },
          onSaved: (entrada) {
            _contrasena = entrada;
          },
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(Icons.lock_outline, color: const Color(0xFF5C4438)),
          ),
          obscureText: true,
        ),
      ),
    );
  }

  Future<void> iniciarSesion(BuildContext context) async {
    final formState = _formkey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        FirebaseUser user = (await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: _correo, password: _contrasena)) as FirebaseUser;
        Navigator.of(context).pushNamed('/menu');
      } catch (e) {
        print(e.message);
      }
    }
  }
}
