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
          title: Text("Aplikasi Text Widget"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 200,
                child: Text(
                  "Saya sedang melatih kemampuan flutter saya.",
                  maxLines: 2, // untuk banyak line
                  overflow: TextOverflow
                      .ellipsis, // untuk melihat text yang terpotong menjadi ... (titik)
                  softWrap: false, // untuk membuat text tidak di wrap ke bawah
                  textAlign: TextAlign
                      .center, // mengatur bagaimana text tersebut di tampilkan
                  style: TextStyle(
                    color: Colors.white, // untuk memberi warna
                    fontStyle: FontStyle.italic, // untuk mengatur gaya huruf
                    fontWeight: FontWeight.w700, // untuk ketebalan huruf
                    fontSize: 20, // untuk mengatur ukuran huruf
                  ), // untuk style dari text tersebut
                ))),
      ),
    );
  }
}
