import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color selected1 = Colors.white;
int isSelected1 = 0;

Color selected2 = Colors.white;
int isSelected2 = 0;

class Pago extends StatefulWidget {
  @override
  _PagoState createState() => _PagoState();
}

class _PagoState extends State<Pago> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              barraNavegacion(context),
              textos1(),
              Stack(children: [
                caja(),
                Align(
                  alignment: Alignment.center,
                  child: Column(children: [
                    cajaNumero(),
                    cajaFecha(),
                    cajaNombre(),
                  ]),
                )
              ]),
              //START BOTTOM BUTTONS
              Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 40, top: 30),
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black)),
                              color: selected1,
                              onPressed: () {
                                setState(() {
                                  if (isSelected1 == 0) {
                                    selected1 = Color(0xFFFFE3C0);
                                    isSelected1 = 1;
                                  } else {
                                    selected1 = Colors.white;
                                    isSelected1 = 0;
                                  }
                                });
                              },
                            ),
                          )),
                      Padding(
                          padding: EdgeInsets.only(left: 20, top: 30),
                          child: Row(children: [
                            Text(
                              'Acepto los ',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            Text(
                              'Términos y Condiciones ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFFF19C6A),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]))
                    ],
                  ),
                  Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: 40, top: 20, bottom: 20),
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.black)),
                                color: selected2,
                                onPressed: () {
                                  setState(() {
                                    if (isSelected2 == 0) {
                                      selected2 = Color(0xFFFFE3C0);
                                      isSelected2 = 1;
                                    } else {
                                      selected2 = Colors.white;
                                      isSelected2 = 0;
                                    }
                                  });
                                },
                              ),
                            )),
                        Padding(
                            padding:
                                EdgeInsets.only(left: 20, top: 20, bottom: 20),
                            child: Text(
                              'Autorizo el cargo automático mensual de mi tarjeta',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            )),
                      ]),
                  Container(
                    height: 40,
                  )
                ],
              ),
            ],
          ),
          //END BOTTOM BUTTONS
          Container(
              height: double.infinity,
              alignment: Alignment.bottomCenter,
              child: botonPago())
        ],
      ),
    );
  }
}

Widget barraNavegacion(BuildContext context) {
  return Stack(
    children: [
      Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              color: const Color(0xFFFFEED9),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 5, offset: Offset(0, 2.5))
              ])),
      IconButton(
          icon: const Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.of(context).pushNamed('/menu');
          },
          iconSize: 50,
          color: Color.fromRGBO(92, 68, 56, 1),
          padding: const EdgeInsets.only(left: 10.0, top: 20)),
    ],
  );
}

Widget textos1() {
  return Center(
    child: Container(
        child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("ADQUIRIR LA MEMBRESIA",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF5C4438),
                  ))),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text("\$ 50.000",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5C4438),
                  ))),
        ],
      ),
      Padding(
          padding: EdgeInsets.only(top: 0, left: 20, right: 20),
          child: Text(
              " Este cargo se realiza mensualmente y puede ser cancelado en cualquier momento",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Color(0xFF5C4438),
              ))),
    ])),
  );
}

Widget cajaNumero() {
  return Stack(children: [
    //textBox
    Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: 40,
        ),
        child: Container(
            width: 340,
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
    //icono
    Center(
      child: Padding(
          padding: EdgeInsets.only(top: 40, left: 0), child: textoNumero()),
    ),
    //titulo
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
                  'Numero de la tarjeta',
                  style: TextStyle(color: const Color(0xFF5C4438)),
                )),
          )
        ])),
  ]);
}

Widget cajaFecha() {
  //fecha
  return Center(
    child: Container(
      width: 370,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(children: [
            //textBox
            Padding(
              padding: EdgeInsets.only(top: 20, left: 15),
              child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 1))
                      ],
                      border:
                          Border.all(width: 2, color: const Color(0xFFFFC6A5)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10))),
            ),
            //icono
            Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 25, left: 32),
                  child: textoFecha()),
            ),
            //titulo
            Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 37,
                ),
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
                        padding: const EdgeInsets.only(top: 3, left: 15),
                        child: Text(
                          'Fecha de Expiración',
                          style: TextStyle(color: const Color(0xFF5C4438)),
                        )),
                  )
                ])),
          ]),
          Stack(children: [
            //textBox
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30),
              child: Container(
                  width: 110,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(0, 1))
                      ],
                      border:
                          Border.all(width: 2, color: const Color(0xFFFFC6A5)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10))),
            ),
            //icono
            Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 25, left: 45),
                  child: textoCCV()),
            ),
            //titulo
            Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 55,
                ),
                child: Stack(children: [
                  Center(
                    child: Container(
                        height: 20,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xffffc6a5),
                        )),
                  ),
                  Center(
                    child: Padding(
                        padding: const EdgeInsets.only(top: 3, left: 20),
                        child: Text(
                          'CVV',
                          style: TextStyle(color: const Color(0xFF5C4438)),
                        )),
                  )
                ])),
          ])
        ],
      ),
    ),
  );
}

Widget cajaNombre() {
  return Stack(children: [
    //textBox
    Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: Container(
            width: 340,
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
    //icono
    Center(
      child: Padding(
          padding: EdgeInsets.only(top: 20, left: 0), child: textoNombre()),
    ),
    //titulo
    Padding(
        padding: EdgeInsets.only(top: 10, right: 80),
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
                  'Nombre en la tarjeta',
                  style: TextStyle(color: const Color(0xFF5C4438)),
                )),
          )
        ])),
  ]);
}

Widget textoNumero() {
  String numero;
  return Center(
    child: Container(
      width: 300,
      color: Color(0x00000000),
      child: TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [
            WhitelistingTextInputFormatter.digitsOnly,
            new LengthLimitingTextInputFormatter(19),
          ],
          // ignore: missing_return
          validator: (entrada) {
            if (entrada.isEmpty) {
              return 'Por favor escriba el numero de la tarjeta';
            }
          },
          onSaved: (entrada) {
            numero = entrada;
          },
          decoration: InputDecoration(
              icon: Icon(
                Icons.credit_card,
                color: const Color(0xFF5C4438),
              ),
              border: InputBorder.none)),
    ),
  );
}

Widget textoFecha() {
  String fecha;
  return Center(
    child: Container(
      width: 100,
      color: Color(0x00000000),
      child: new TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [
            WhitelistingTextInputFormatter.digitsOnly,
            new LengthLimitingTextInputFormatter(4),
          ],
          // ignore: missing_return
          validator: (entrada) {
            if (entrada.isEmpty) {
              return 'Por favor escriba la fecha de expiración de la tarjeta';
            }
          },
          onSaved: (entrada) {
            fecha = entrada;
          },
          decoration: InputDecoration(
              icon: Icon(
                Icons.calendar_today,
                color: const Color(0xFF5C4438),
              ),
              hintText: 'MM/YY',
              border: InputBorder.none)),
    ),
  );
}

Widget textoCCV() {
  String fecha;
  return Center(
    child: Container(
      width: 100,
      color: Color(0x00000000),
      child: new TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [
            WhitelistingTextInputFormatter.digitsOnly,
            new LengthLimitingTextInputFormatter(3),
          ],
          // ignore: missing_return
          validator: (entrada) {
            if (entrada.isEmpty) {
              return 'Por favor escriba el CCV';
            }
          },
          onSaved: (entrada) {
            fecha = entrada;
          },
          decoration: InputDecoration(
              icon: Icon(
                Icons.lock_outline,
                color: const Color(0xFF5C4438),
              ),
              hintText: 'XXX',
              border: InputBorder.none)),
    ),
  );
}

Widget textoCVV() {
  String cvv;
  return Center(
    child: Container(
      width: 300,
      color: Color(0x00000000),
      child: TextFormField(
          inputFormatters: [
            WhitelistingTextInputFormatter.digitsOnly,
            new LengthLimitingTextInputFormatter(3),
          ],
          // ignore: missing_return
          validator: (entrada) {
            if (entrada.isEmpty) {
              return 'Por favor escriba el numero en la parte posterior de la tarjeta';
            }
          },
          onSaved: (entrada) {
            cvv = entrada;
          },
          decoration: InputDecoration(
              icon: Icon(
                Icons.lock,
                color: const Color(0xFF5C4438),
              ),
              border: InputBorder.none)),
    ),
  );
}

Widget textoNombre() {
  String nombre;
  return Center(
    child: Container(
      width: 300,
      color: Color(0x00000000),
      child: TextFormField(
          // ignore: missing_return
          validator: (entrada) {
            if (entrada.isEmpty) {
              return 'Por favor escriba el nombre que aparece en la tarjeta';
            }
          },
          onSaved: (entrada) {
            nombre = entrada;
          },
          decoration: InputDecoration(
              icon: Icon(
                Icons.person,
                color: const Color(0xFF5C4438),
              ),
              border: InputBorder.none)),
    ),
  );
}

Widget caja() {
  return Center(
    child: Padding(
      padding: EdgeInsets.only(top: 15),
      child: Container(
          height: 250,
          width: 370,
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
  );
}

Widget botonPago() {
  return SizedBox(
      height: 60,
      width: double.infinity,
      child: RaisedButton(
        color: Color(0xFFFFFC6A5),
        child: Text(
          "REALIZAR EL PAGO",
          style: TextStyle(
            color: Color(0xFF5C4438),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {},
      ));
}
