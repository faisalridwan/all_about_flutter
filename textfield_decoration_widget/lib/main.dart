import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "Nilai Awal");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Field dan Decoration"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  icon: Icon(Icons.account_box),
                  prefixIcon: Icon(Icons.account_box),
                  prefixText: "Name : ", // di depan
                  prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                  labelText: "Nama Lengkap",
                  labelStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                  hintText: "Nama Lengkapnya",
                  hintStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                  suffixIcon: Icon(Icons.account_box),,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
                maxLength: 5, // hanya untuk panjang 5 ca
                // minLines: 5, // batas 5 baris
                obscureText: true, // untuk password
                onChanged: (value) {
                  setState(() {});
                }, // agar ganti ke state baru
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
