import 'package:flutter/material.dart';

class Ropa extends StatefulWidget {
  @override
  _RopaState createState() => _RopaState();
}

class _RopaState extends State<Ropa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        imagen(),
        ListView(
          children: [
            //imagen(),
            barraNavegacion(context),
            botones(),
          ],
        ),
      ],
    ));
  }
}

Widget botones() {
  return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: SizedBox(
                      height: 70,
                      width: 300,
                      child: RaisedButton(
                        color: const Color(0x0FFFFC6A5),
                        onPressed: () {},
                        child: Text("P A R T E   S U P E R I O R",
                            style: TextStyle(fontSize: 20)),
                      )))
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: SizedBox(
                    height: 70,
                    width: 300,
                    child: RaisedButton(
                      color: const Color(0x0FFFFC6A5),
                      onPressed: () {},
                      child: Text("P A R T E   I N F E R I O R",
                          style: TextStyle(fontSize: 20)),
                    ),
                  ))
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: SizedBox(
                    height: 70,
                    width: 300,
                    child: RaisedButton(
                      color: const Color(0x0FFFFC6A5),
                      onPressed: () {},
                      child: Text(
                        "Z A P A T O S",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ))
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: SizedBox(
                    height: 70,
                    width: 300,
                    child: RaisedButton(
                      color: const Color(0x0FFFFC6A5),
                      onPressed: () {},
                      child: Text(
                        "V E S T I D O S",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ))
            ],
          ),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: SizedBox(
                    height: 70,
                    width: 300,
                    child: RaisedButton(
                      color: const Color(0x0FFFFC6A5),
                      onPressed: () {},
                      child: Text(
                        "R O P A   I N T E R I O R",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ));
}

Widget barraNavegacion(BuildContext context) {
  return Stack(
    children: [
      Container(
          width: double.infinity,
          height: 150,
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
          onPressed: () {},
          iconSize: 50,
          color: Color.fromRGBO(92, 68, 56, 1),
          padding: const EdgeInsets.only(left: 10.0, top: 20)),
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 90),
            child: Center(
              child: Container(
                child: Text(
                  'MAQUILLAJE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 68, 46),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget imagen() {
  return Padding(
    padding: EdgeInsets.only(top: 50),
    child: Image.asset('assets/fondo1.png'),
  );
}
