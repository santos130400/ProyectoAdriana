import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:async';
import 'package:prueba_apliacion/MODELO/Usuarios.dart';

class Registro extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

final usuariosReference =
    FirebaseDatabase.instance.reference().child('usuario');

class _RegistroState extends State<Registro> {
  List<Usuarios> items;
  StreamSubscription<Event> _adicionarUsuarios;
  StreamSubscription<Event> _actualizarUsuarios;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    items = new List();
    _adicionarUsuarios = usuariosReference.onChildAdded.listen(_adicionarU);
    _actualizarUsuarios = usuariosReference.onChildAdded.listen(_actualizarU);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _adicionarUsuarios.cancel();
    _actualizarUsuarios.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Stack(children: [
            textoUnete(),
            Column(
              children: [
                panelContieneDatos(),
                //boton confrimar
                Padding(
                    padding: const EdgeInsets.only(top: 20),
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
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(30)),
                      child: RaisedButton(
                          color: const Color(0xffffc6a5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('CREAR CUENTA',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF5C4438),
                                  fontSize: 25)),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/registro');
                          }),
                    )),
                textosFinales()
              ],
            ),
            //ciculo sobre puesto
            circuloFoto(),
            cuadroUsuario(),
            cuadroCorreo(),
            cuadroTelefono(),
            cuadroClave(),
            cuadroConfromacion()
          ]),
        ]));
  }

  Widget textosFinales() {
    return Padding(
        padding: EdgeInsets.only(top: 5),
        child: Row(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 1, left: 70),
                child: Text(
                  '¿Ya tienes una cuenta?',
                  style: TextStyle(
                      color: const Color(0xFF5C4438),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 1, left: 20),
                child: GestureDetector(
                  child: Text(
                    'Inicia Sesion',
                    style: TextStyle(
                        color: const Color(0xFFFFC6A5),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('/inicio');
                  },
                ))
          ],
        ));
  }

  Widget cuadroUsuario() {
    return Padding(
        padding: EdgeInsets.only(top: 215, left: 80),
        child: Stack(children: [
          Container(
              height: 18,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffffc6a5),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 1, left: 20),
              child: Text(
                'Nombre completo',
                style: TextStyle(color: const Color(0xFF5C4438)),
              ))
        ]));
  }

  Widget cuadroCorreo() {
    return Padding(
        padding: EdgeInsets.only(top: 280, left: 80),
        child: Stack(children: [
          Container(
              height: 18,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffffc6a5),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 1, left: 20),
              child: Text(
                'Correo electronico',
                style: TextStyle(color: const Color(0xFF5C4438)),
              ))
        ]));
  }

  Widget cuadroTelefono() {
    return Padding(
        padding: EdgeInsets.only(top: 342, left: 80),
        child: Stack(children: [
          Container(
              height: 18,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffffc6a5),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 1, left: 50),
              child: Text(
                'Teléfono',
                style: TextStyle(color: const Color(0xFF5C4438)),
              ))
        ]));
  }

  Widget cuadroClave() {
    return Padding(
        padding: EdgeInsets.only(top: 405, left: 80),
        child: Stack(children: [
          Container(
              height: 18,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffffc6a5),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 1, left: 40),
              child: Text(
                'Contraseña',
                style: TextStyle(color: const Color(0xFF5C4438)),
              ))
        ]));
  }

  Widget cuadroConfromacion() {
    return Padding(
        padding: EdgeInsets.only(top: 468, left: 80),
        child: Stack(children: [
          Container(
              height: 18,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffffc6a5),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 1, left: 8),
              child: Text(
                'Confirmar contraseña',
                style: TextStyle(color: const Color(0xFF5C4438)),
              ))
        ]));
  }

  Widget textoUnete() {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text('ÚNETE',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF5C4438),
              fontSize: 55)),
    ));
  }

  Widget panelContieneDatos() {
    return Stack(children: [
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 140),
          child: Container(
            width: 375,
            height: 410,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 2, offset: Offset(0, 5))
                ],
                color: const Color(0xFFFFEED9),
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
      columnaDatos(),
    ]);
  }

  Widget circuloFoto() {
    return Stack(
      children: [
        Center(
          child: Padding(
              padding: EdgeInsets.only(top: 80),
              child: Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 3))
                  ], shape: BoxShape.circle, color: Colors.amber[50]))),
        ),
        Center(
          child: Padding(
              padding: EdgeInsets.only(top: 90),
              child: Container(
                height: 110,
                width: 110,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              )),
        )
      ],
    );
  }

  Widget columnaDatos() {
    return Column(
      children: [
        cajaNombre(),
        cajaCorreo(),
        cajaTelefono(),
        cajaContrasena(),
        cajaConfirmacion()
      ],
    );
  }

  Widget cajaNombre() {
    return Stack(children: [
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 225),
          child: Container(
              width: 350,
              height: 45,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 1))
                  ],
                  border: Border.all(width: 2, color: const Color(0xffffc6a5)),
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5))),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 225, left: 40), child: textoNombre()),
    ]);
  }

  Widget textoNombre() {
    return TextFormField(
        decoration: InputDecoration(
            icon: Icon(Icons.person_outline, color: const Color(0xFF5C4438)),
            hintText: 'Escriba su nombre completo',
            hintStyle: TextStyle(color: Colors.grey[400]),
            border: InputBorder.none));
  }

  Widget cajaCorreo() {
    return Stack(children: [
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
              width: 350,
              height: 45,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 1))
                  ],
                  border: Border.all(width: 2, color: const Color(0xffffc6a5)),
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5))),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 15, left: 40), child: textoCorreo()),
    ]);
  }

  Widget textoCorreo() {
    return TextFormField(
        decoration: InputDecoration(
            icon: Icon(Icons.mail_outline, color: const Color(0xFF5C4438)),
            hintText: 'Escriba su correo electrónico',
            hintStyle: TextStyle(color: Colors.grey[400]),
            border: InputBorder.none));
  }

  Widget cajaTelefono() {
    return Stack(children: [
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
              width: 350,
              height: 45,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 1))
                  ],
                  border: Border.all(width: 2, color: const Color(0xffffc6a5)),
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5))),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 15, left: 40), child: textoTelefono()),
    ]);
  }

  Widget textoTelefono() {
    return TextFormField(
        decoration: InputDecoration(
            icon: Icon(Icons.phone_android, color: const Color(0xFF5C4438)),
            hintText: 'Escriba su número de teléfono',
            hintStyle: TextStyle(color: Colors.grey[400]),
            border: InputBorder.none));
  }

  Widget cajaContrasena() {
    return Stack(children: [
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
              width: 350,
              height: 45,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 1))
                  ],
                  border: Border.all(width: 2, color: const Color(0xffffc6a5)),
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5))),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 15, left: 40),
          child: textoContrasena()),
    ]);
  }

  Widget textoContrasena() {
    return TextFormField(
        decoration: InputDecoration(
            icon: Icon(Icons.lock_outline, color: const Color(0xFF5C4438)),
            hintText: 'Escriba su contraseña',
            hintStyle: TextStyle(color: Colors.grey[400]),
            border: InputBorder.none),
        obscureText: true);
  }

  Widget cajaConfirmacion() {
    return Stack(children: [
      Center(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
              width: 350,
              height: 45,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 2, offset: Offset(0, 1))
                  ],
                  border: Border.all(width: 2, color: const Color(0xffffc6a5)),
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5))),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 15, left: 40),
          child: textoConfirmacion()),
    ]);
  }

  Widget textoConfirmacion() {
    return TextFormField(
        decoration: InputDecoration(
            icon: Icon(Icons.lock_outline, color: const Color(0xFF5C4438)),
            hintText: 'Escriba su constraseña de nuevo',
            hintStyle: TextStyle(color: Colors.grey[400]),
            border: InputBorder.none),
        obscureText: true);
  }

  void _adicionarU(Event event) {
    setState(() {
      items.add(new Usuarios.fromSnapShot(event.snapshot));
    });
  }

  void _actualizarU(Event event) {
    var valorViejoUsiario =
        items.singleWhere((usuario) => usuario.id == event.snapshot.key);
    setState(() {
      items[items.indexOf(valorViejoUsiario)] =
          new Usuarios.fromSnapShot(event.snapshot);
    });
  }
}
