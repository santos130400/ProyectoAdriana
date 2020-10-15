import 'dart:io';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MenuPrincipal extends StatefulWidget {
  @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  File imageFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: Container(
          color: Color(0xFFEBA47A),
          child: ListView(
            children: [
              menuHamburguesa(context),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: <Widget>[
                  cuerpo(),
                  recuadroPerfil(),
                  fotoPerfil(),
                  botonesArriba()
                ],
              ),
            ],
          ),
          Container(
            height: double.infinity,
            alignment: Alignment.bottomCenter,
            child: botonesFinales(),
          )
        ],
      ),
    );
  }

  Widget recuadroPerfil() {
    return Center(
        child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              width: 320,
              height: 120,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400],
                        blurRadius: 4,
                        offset: Offset(0, 5))
                  ]),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'DIANA DÍAZ',
                        style: TextStyle(
                            color: Color(0xFF5C4438),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: FlatButton(
                        child: Icon(
                          Icons.photo_album,
                          size: 40,
                          color: Color(0xFF5C4438),
                        ),
                        onPressed: () {
                          _abrirGaleria(context);
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: FlatButton(
                        child: Icon(
                          Icons.photo_camera,
                          size: 40,
                          color: Color(0xFF5C4438),
                        ),
                        onPressed: () {
                          _abrirCamara(context);
                        },
                      ),
                    ),
                  )
                ],
              ),
            )));
  }

  Future _abrirGaleria(BuildContext context) async {
    var picture = await ImagePicker.pickImage(
        source: ImageSource.gallery, maxHeight: 100, maxWidth: 100);
    this.setState(() {
      imageFile = picture;
      print(imageFile);
    });
  }

  void _abrirCamara(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
  }

  Widget fotoPerfil() {
    return Center(
        child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: imageFile != null
                          ? FileImage(imageFile)
                          : AssetImage('assets/cara.jpg'),
                      fit: BoxFit.cover,
                    )))));
  }

  Widget cuerpo() {
    return Column(
      children: [
        parteArriba(),
        fila1Botones(),
        fila2Botones(),
      ],
    );
  }

  Widget botonesFinales() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Stack(children: [
        Container(
            height: 50, width: double.maxFinite, color: Color(0xFFEBA47A)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 50,
                width: 135,
                decoration: BoxDecoration(color: Color(0xFFEBA47A)),
                child: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.home,
                      size: 40,
                    ))),
            Container(
              height: 50,
              width: 135,
              decoration: BoxDecoration(
                color: Color(0xFFEBA47A),
              ),
              child: FlatButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.favorite_border,
                    size: 40,
                  )),
            ),
            Container(
                height: 50,
                width: 135,
                decoration: BoxDecoration(color: Color(0xFFEBA47A)),
                child: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.access_time,
                      size: 40,
                    )))
          ],
        ),
      ]),
    );
  }

  Widget fila1Botones() {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/polvos.png')),
                      color: Color(0xFFFFEED9),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 2,
                            offset: Offset(0, 5))
                      ]),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed('/resultadosMaquillaje');
                      },
                      child: null),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Maquillaje',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF5C4438),
                          fontSize: 18),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/falda.png')),
                      color: Color(0xFFFFEED9),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 2,
                            offset: Offset(0, 5))
                      ]),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/resultadosRopa');
                      },
                      child: null),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Ropa',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF5C4438),
                          fontSize: 18),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget fila2Botones() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/joyeria.png')),
                      color: Color(0xFFFFEED9),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 2,
                            offset: Offset(0, 5))
                      ]),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed('/resultadosAccesorios');
                      },
                      child: null),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Accesorios',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF5C4438),
                          fontSize: 18),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/cabello.png')),
                      color: Color(0xFFFFEED9),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 2,
                            offset: Offset(0, 5))
                      ]),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/resultadosCabello');
                      },
                      child: null),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Cabello',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF5C4438),
                          fontSize: 18),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget botonesArriba() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: const Color(0xFF5C4438),
              size: 40,
            ),
            onPressed: () => scaffoldKey.currentState.openDrawer(),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                Icons.mail_outline,
                color: const Color(0xFF5C4438),
                size: 40,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  Widget parteArriba() {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xFFFFEED9), boxShadow: [
        BoxShadow(color: Colors.grey[400], blurRadius: 4, offset: Offset(0, 5))
      ]),
    );
  }

  Widget menuHamburguesa(BuildContext context) {
    return Stack(
      children: [
        Column(children: [
          Image.asset('assets/logo.png'),
          menu1(),
          menu2(),
          menu3(context),
          configuraciones(),
          cerrarSesion()
        ]),
      ],
    );
  }

  Widget menu1() {
    return Container(
      child: FlatButton(
        child: Row(
          children: [
            Icon(
              Icons.payment,
              color: const Color(0xFF5C4438),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Adquirir membresía',
                textAlign: TextAlign.center,
                style: TextStyle(color: const Color(0xFF5C4438), fontSize: 20),
              ),
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }

  Widget menu2() {
    return Container(
      child: FlatButton(
        child: Row(
          children: [
            Icon(Icons.redeem, color: const Color(0xFF5C4438)),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Recomendasiones y',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0xFF5C4438), fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('descuentos',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0xFF5C4438), fontSize: 20)),
                )
              ],
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }

  Widget menu3(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Row(
          children: [
            Icon(Icons.assignment, color: const Color(0xFF5C4438)),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Repetir el test',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: const Color(0xFF5C4438), fontSize: 20)),
            )
          ],
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/hola');
        },
      ),
    );
  }

  Widget configuraciones() {
    return Container(
      child: FlatButton(
        child: Row(
          children: [
            Icon(Icons.settings, color: const Color(0xFF5C4438)),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Configuraciones',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(color: const Color(0xFF5C4438), fontSize: 20)),
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }

  Widget cerrarSesion() {
    return Positioned(
        child: Align(
      alignment: FractionalOffset.bottomCenter,
      child: Container(
        child: FlatButton(
          child: Row(
            children: [
              Icon(Icons.exit_to_app, color: const Color(0xFF5C4438)),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Cerrar sesión',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color(0xFF5C4438), fontSize: 20)),
              )
            ],
          ),
          onPressed: () {},
        ),
      ),
    ));
  }
}
