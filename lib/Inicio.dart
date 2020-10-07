import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/Fondo.png'), fit: BoxFit.cover)),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Image.asset('assets/logo.png', height: 150, width: 300),
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
            Column(children: [
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
                          Navigator.of(context).pushNamed('/hola');
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
                          Navigator.of(context).pushNamed('/registro');
                        }),
                  ))
            ]),
            Padding(
                padding: EdgeInsets.only(top: 30, left: 50),
                child: Stack(children: [
                  Container(
                      height: 20,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffffc6a5),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 3, left: 18),
                      child: Text(
                        'Correo electrónico',
                        style: TextStyle(color: const Color(0xFF5C4438)),
                      ))
                ])),
            Padding(
              padding: EdgeInsets.only(top: 100, left: 50),
              child: Stack(
                children: [
                  Container(
                      height: 20,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffffc6a5),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(top: 3, left: 40),
                      child: Text(
                        'Contraseña',
                        style: TextStyle(color: const Color(0xFF5C4438)),
                      ))
                ],
              ),
            ),
          ])
        ]),
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
            padding: EdgeInsets.only(top: 40, left: 20),
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
            padding: EdgeInsets.only(top: 20, left: 20),
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
        padding: const EdgeInsets.only(top: 100),
        child: Text(
          '¿No tienes aún una cuenta?',
          style: TextStyle(color: const Color(0xFF5C4438)),
        ));
  }

  Widget textoCorreoOUsuario() {
    return Center(
      child: TextFormField(
          decoration: InputDecoration(
              icon: Icon(Icons.mail_outline, color: const Color(0xFF5C4438)),
              hintText: 'Escriba su correo electrónico',
              hintStyle: TextStyle(color: Colors.grey[400]),
              border: InputBorder.none)),
    );
  }

  Widget textoContrasena() {
    return Center(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Escriba su contraseña',
          hintStyle: TextStyle(color: Colors.grey[400]),
          border: InputBorder.none,
          icon: Icon(Icons.lock_outline, color: const Color(0xFF5C4438)),
        ),
        obscureText: true,
      ),
    );
  }
}
