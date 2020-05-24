import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// perbedaannya
// stateless tidak ada perubahan dalam state atau state
// staful memiliki perubahan di dalam tampilan

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekanTombol() {
    setState(() { // mengubah tampilan sesuai yang ada saat ini
      number = number + 1;
    });
  }
  void tekanTombolNol() {
    setState(() { // mengubah tampilan sesuai yang ada saat ini
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stateful Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString(), style: TextStyle(fontSize: 10 + number.toDouble()),),
              RaisedButton(
                child: Text("Tambah Bilangan"),
                onPressed: tekanTombol,
              ),
              RaisedButton(
                child: Text("Kembali Nol"),
                onPressed: tekanTombolNol,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
