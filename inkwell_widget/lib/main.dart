import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//kalau raised button hanya warna saja, kalau inkwell bisa di edit dan gradasi

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar InkWell"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                color: Colors.amber,
                child: Text("Raised Button"),
                shape: StadiumBorder(),
                onPressed: () {},
              ),
              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Colors.purple, Colors.pink],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.amber,
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      child: Center(
                          child: Text(
                        "InkWell Button",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
