import 'package:flutter/material.dart';
import 'package:prueba_apliacion/main.dart';

int radioItem1 = 0;
int opacity9 = 0;

class Tejidos extends StatefulWidget {
  Tejidos({Key key}) : super(key: key);
  @override
  _Tejidos createState() => new _Tejidos();
}

class _Tejidos extends State<Tejidos> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    radioItem1 = 0;
    opacity9 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            barraNavegacion(context),
            faces_01,
            Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    RadioListTile(
                      groupValue: radioItem1,
                      value: 1,
                      title: Text('Encaje, chiffon y terciopelo'),
                      activeColor: new Color.fromRGBO(92, 68, 56, 1),
                      onChanged: (val) {
                        setState(() {
                          radioItem1 = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: radioItem1,
                      value: 2,
                      title: Text('Lana delgada, algodón y gabardina'),
                      activeColor: new Color.fromRGBO(92, 68, 56, 1),
                      onChanged: (val) {
                        setState(() {
                          radioItem1 = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: radioItem1,
                      value: 3,
                      title: Text('Tejidos brillantes, piel o cuero, y lame'),
                      activeColor: new Color.fromRGBO(92, 68, 56, 1),
                      onChanged: (val) {
                        setState(() {
                          radioItem1 = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: radioItem1,
                      value: 4,
                      title: Text('Denim, lino, algodón'),
                      activeColor: new Color.fromRGBO(92, 68, 56, 1),
                      onChanged: (val) {
                        setState(() {
                          radioItem1 = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: radioItem1,
                      value: 5,
                      title: Text('Cachemira, lino y seda'),
                      activeColor: new Color.fromRGBO(92, 68, 56, 1),
                      onChanged: (val) {
                        setState(() {
                          radioItem1 = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: radioItem1,
                      value: 6,
                      title: Text('Muy decorados y metalizados'),
                      activeColor: new Color.fromRGBO(92, 68, 56, 1),
                      onChanged: (val) {
                        setState(() {
                          radioItem1 = val;
                        });
                      },
                    ),
                    RadioListTile(
                      groupValue: radioItem1,
                      value: 7,
                      title: Text('Transparencias, encaje, tejidos stress'),
                      activeColor: new Color.fromRGBO(92, 68, 56, 1),
                      onChanged: (val) {
                        setState(() {
                          radioItem1 = val;
                        });
                      },
                    ),
                    Container(
                      height: 80,
                    )
                  ],
                )),
          ],
        ),
        Container(
            height: double.infinity,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Seleccione una Opción',
                  style: TextStyle(color: Color.fromARGB(opacity9, 255, 0, 0)),
                ),
                continuar(context)
              ],
            ))
      ],
    ));
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
                if (radioItem1 != 0) {
                  setState(() {
                    opacity9 = 0;
                  });
                  Navigator.pushNamed(context, '/caracter');
                  resul.tejido = radioItem1;
                } else {
                  setState(() {
                    opacity9 = 255;
                  });
                }
              },
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'CONTINUAR',
                      textAlign: TextAlign.center,
                      textScaleFactor: 2.0,
                      style:
                          TextStyle(color: new Color.fromRGBO(92, 68, 56, 1)),
                    ),
                  ]))),
    );
  }
}

Widget faces_01 = new Container(
    padding: const EdgeInsets.only(left: 70, right: 70, top: 30, bottom: 10),
    child: Column(children: <Widget>[
      Center(
        child: Text(
          '¿CUÁLES SON LOS TEJIDOS QUE MÁS TE GUSTAN?',
          textAlign: TextAlign.center,
          style:
              TextStyle(color: new Color.fromRGBO(92, 68, 56, 1), fontSize: 20),
        ),
      ),
    ]));

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
                    color: Colors.black, blurRadius: 4, offset: Offset(0, 0.5))
              ])),
      IconButton(
          icon: const Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.of(context).pushNamed('/paleta');
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
                  'Tu progreso',
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
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.grey[50],
                              Colors.grey[100],
                              Colors.grey[400],
                            ],
                            stops: [
                              0.1,
                              0.3,
                              0.8
                            ])),
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
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.grey[50],
                              Colors.grey[100],
                              Colors.grey[400],
                            ],
                            stops: [
                              0.1,
                              0.3,
                              0.8
                            ])),
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
