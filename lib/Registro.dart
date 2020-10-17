import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController recibeNombre = TextEditingController();
  TextEditingController recibeTelefono = TextEditingController();
  TextEditingController recibeCorreo = TextEditingController();
  TextEditingController recibeContrasena = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double tamano = 410;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Form(
          key: _formkey,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/fondo1.png'), fit: BoxFit.fill)),
            child: ListView(children: [
              Stack(children: [
                textoUnete(),
                Column(
                  children: [
                    panelContieneDatos(),
                    textoVerificar(),
                    //boton confrimar
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
                              onPressed: () async {
                                if (_formkey.currentState.validate()) {
                                  _registrarCuenta();
                                }
                              }),
                        )),
                    textosFinales()
                  ],
                ),
                //ciculo sobre puesto
                circuloFoto(),
              ]),
            ]),
          ),
        ));
  }

  void _registrarCuenta() async {
    try {
      final User usuario = (await _auth.createUserWithEmailAndPassword(
              email: recibeCorreo.text, password: recibeContrasena.text))
          .user;

      if (usuario != null) {
        if (!usuario.emailVerified) {
          await usuario.sendEmailVerification();
        }
        await usuario.updateProfile(displayName: recibeNombre.text);
        Navigator.of(context).pushNamed('/inicio');
      }
    } catch (e) {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(
          e.toString(),
          textAlign: TextAlign.center,
        ),
      ));
      print(e.message);
    }
  }

  Widget textosFinales() {
    return Padding(
        padding: EdgeInsets.only(top: 5, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(
                  top: 1,
                ),
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

  Widget textoVerificar() {
    return Padding(
        padding: EdgeInsets.only(top: 10),
        child: Padding(
            padding: const EdgeInsets.only(
              top: 1,
            ),
            child: Text(
              'Tras crear tu cuenta no olvides verificarla en tu correo',
              style: TextStyle(
                  color: const Color(0xFF5C4438),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )));
  }

  Widget cuadroUsuario() {
    return Center(
      child: Padding(
          padding: EdgeInsets.only(top: 217, right: 120),
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
                  style:
                      TextStyle(color: const Color(0xFF5C4438), fontSize: 13),
                ))
          ])),
    );
  }

  Widget cuadroCorreo() {
    return Center(
      child: Padding(
          padding: EdgeInsets.only(top: 7, right: 120),
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
                  style:
                      TextStyle(color: const Color(0xFF5C4438), fontSize: 13),
                ))
          ])),
    );
  }

  Widget cuadroTelefono() {
    return Center(
      child: Padding(
          padding: EdgeInsets.only(top: 7, right: 120),
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
                  style:
                      TextStyle(color: const Color(0xFF5C4438), fontSize: 13),
                ))
          ])),
    );
  }

  Widget cuadroClave() {
    return Center(
      child: Padding(
          padding: EdgeInsets.only(top: 7, right: 120),
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
                  style:
                      TextStyle(color: const Color(0xFF5C4438), fontSize: 13),
                ))
          ])),
    );
  }

  Widget cuadroConfromacion() {
    return Center(
      child: Padding(
          padding: EdgeInsets.only(top: 7, right: 120),
          child: Stack(children: [
            Container(
                height: 18,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffffc6a5),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 1, left: 10),
                child: Text(
                  'Confirmar contraseña',
                  style:
                      TextStyle(color: const Color(0xFF5C4438), fontSize: 13),
                ))
          ])),
    );
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
            height: tamano,
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
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/persona.png'),
                        fit: BoxFit.cover)),
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
    return Stack(
      children: [
        Container(
          child: Stack(children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 225),
                child: Container(
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 1))
                        ],
                        border: Border.all(
                            width: 2, color: const Color(0xffffc6a5)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 225, left: 40),
                child: textoNombre()),
          ]),
        ),
        cuadroUsuario()
      ],
    );
  }

  Widget textoNombre() {
    return Padding(
      padding: const EdgeInsets.only(right: 60),
      child: Center(
        child: Container(
          width: 300,
          color: Color(0x00000000),
          child: TextFormField(
              controller: recibeNombre,
              validator: (value) {
                setState(() {
                  tamano = 500;
                });
                if (value.isEmpty) {
                  return 'Escriba su nombre';
                }
                return null;
              },
              decoration: InputDecoration(
                  icon: Icon(Icons.person_outline,
                      color: const Color(0xFF5C4438)),
                  border: InputBorder.none)),
        ),
      ),
    );
  }

  Widget cajaCorreo() {
    return Stack(
      children: [
        Container(
          child: Stack(children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Container(
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 1))
                        ],
                        border: Border.all(
                            width: 2, color: const Color(0xffffc6a5)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15, left: 40),
                child: textoCorreo()),
          ]),
        ),
        cuadroCorreo()
      ],
    );
  }

  Widget textoCorreo() {
    return Padding(
      padding: const EdgeInsets.only(right: 60),
      child: Center(
        child: Container(
          width: 300,
          color: Color(0x00000000),
          child: TextFormField(
              controller: recibeCorreo,
              validator: (value) {
                setState(() {
                  tamano = 500;
                });
                if (value.isEmpty) {
                  return 'Escriba su correo';
                }
                return null;
              },
              decoration: InputDecoration(
                  icon:
                      Icon(Icons.mail_outline, color: const Color(0xFF5C4438)),
                  border: InputBorder.none)),
        ),
      ),
    );
  }

  Widget cajaTelefono() {
    return Stack(
      children: [
        Container(
          child: Stack(children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Container(
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 1))
                        ],
                        border: Border.all(
                            width: 2, color: const Color(0xffffc6a5)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15, left: 40),
                child: textoTelefono()),
          ]),
        ),
        cuadroTelefono()
      ],
    );
  }

  Widget textoTelefono() {
    return Padding(
        padding: const EdgeInsets.only(right: 60),
        child: Center(
            child: Container(
                width: 300,
                color: Color(0x00000000),
                child: TextFormField(
                    controller: recibeTelefono,
                    validator: (value) {
                      setState(() {
                        tamano = 500;
                      });
                      if (value.isEmpty) {
                        return 'Escriba su teléfono';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: Icon(Icons.phone_android,
                            color: const Color(0xFF5C4438)),
                        border: InputBorder.none)))));
  }

  Widget cajaContrasena() {
    return Stack(
      children: [
        Container(
          child: Stack(children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Container(
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 1))
                        ],
                        border: Border.all(
                            width: 2, color: const Color(0xffffc6a5)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15, left: 40),
                child: textoContrasena()),
          ]),
        ),
        cuadroClave()
      ],
    );
  }

  Widget textoContrasena() {
    return Padding(
        padding: const EdgeInsets.only(right: 60),
        child: Center(
            child: Container(
                width: 300,
                color: Color(0x00000000),
                child: TextFormField(
                    controller: recibeContrasena,
                    validator: (value) {
                      setState(() {
                        tamano = 500;
                      });
                      if (value.isEmpty) {
                        return 'Escriba una contraseña';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline,
                            color: const Color(0xFF5C4438)),
                        border: InputBorder.none),
                    obscureText: true))));
  }

  Widget cajaConfirmacion() {
    return Stack(
      children: [
        Container(
          child: Stack(children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Container(
                    width: 350,
                    height: 45,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(0, 1))
                        ],
                        border: Border.all(
                            width: 2, color: const Color(0xffffc6a5)),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15, left: 40),
                child: textoConfirmacion()),
          ]),
        ),
        cuadroConfromacion()
      ],
    );
  }

  Widget textoConfirmacion() {
    return Padding(
        padding: const EdgeInsets.only(right: 60),
        child: Center(
            child: Container(
                width: 300,
                color: Color(0x00000000),
                child: TextFormField(
                    validator: (value) {
                      setState(() {
                        tamano = 500;
                      });
                      if (value != recibeContrasena.text) {
                        return 'Las contraseñas no coinciden';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline,
                            color: const Color(0xFF5C4438)),
                        border: InputBorder.none),
                    obscureText: true))));
  }
}
