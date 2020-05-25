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
          title: Text("Latihan Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.amber,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              image: 
              AssetImage("assets/logo-desc.png"), // jangan lupa buat folder assests dan masukkan kedalan pubscpec.yaml
              // NetworkImage(
              //     "https://c4.wallpaperflare.com/wallpaper/246/739/689/digital-digital-art-artwork-illustration-abstract-hd-wallpaper-preview.jpg"),
              fit: BoxFit.contain, repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
