import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Column(children: [
            Container(
              color: Colors.orange[100],
              height: 200,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 75),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: RaisedButton(
                      color: Colors.orange[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.black)),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 75),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: RaisedButton(
                      color: Colors.orange[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.black)),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 95, top: 5),
                    child: Text('Ropa')),
                Padding(
                    padding: const EdgeInsets.only(left: 140, top: 5),
                    child: Text('Maquillaje')),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 5),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: RaisedButton(
                      color: Colors.orange[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.black)),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 5),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: RaisedButton(
                      color: Colors.orange[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.black)),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 95, top: 5),
                    child: Text('Ropa')),
                Padding(
                    padding: const EdgeInsets.only(left: 140, top: 5),
                    child: Text('Maquillaje')),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 5),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: RaisedButton(
                      color: Colors.orange[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.black)),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 5),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: RaisedButton(
                      color: Colors.orange[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.black)),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 95, top: 5),
                    child: Text('Ropa')),
                Padding(
                    padding: const EdgeInsets.only(left: 140, top: 5),
                    child: Text('Maquillaje')),
              ],
            ),
          ]),
          Padding(
              padding: const EdgeInsets.only(top: 100, left: 75),
              child: Container(
                width: 275,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 8,
                          offset: Offset(0, 5))
                    ]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 70),
                      child: Text(
                        'Daniela Arango',
                        style: TextStyle(color: Colors.brown, fontSize: 20),
                      ),
                    )
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 140),
            child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue[50],
                )),
          )
        ]));
  }
}
