import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Stack dan Align Widget"),
        ),
        body: Stack(
          children: <Widget>[
            // background
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            ))
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            ))
                      ],
                    )),
              ],
            ),
            // listview degan text
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                )
              ],
            ),
            // button di tengah bawah
            Align(
              // alignment: Alignment.bottomCenter, //untuk memindahkan tempat button
              alignment: Alignment(0,
                  0.90), // paling kiri x = -1 paling kanan 1 // kalau atas 1 bawah -1
              child: RaisedButton(
                child: Text("My Button"),
                color: Colors.amber,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
