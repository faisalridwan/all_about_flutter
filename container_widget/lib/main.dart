import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container Widget"),
        ),
        // margin jarak antar container dengan widget lainnya (diluar container)
        // padding jarak dari sisi container ke widget yang ada di dalam container (didalam container)
        body: Container(
          color: Colors.red,
          // margin: EdgeInsets.all(10), // jika semua bagian sisi
          margin:
              EdgeInsets.fromLTRB(10, 25, 30, 45), // jika setiap sisi berbeda
          padding: EdgeInsets.only(
              bottom: 20, top: 10), // jika hanya satu sisi tertentu
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration( // untuk dekorasi dari container
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.amber, Colors.blue]),
            ),
          ),
        ),
      ),
    );
  }
}
