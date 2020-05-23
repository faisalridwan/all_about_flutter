import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgetlist = [];
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "Latihan List dan ListView Widget"), // untuk menampung data agar bisa di scroll
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround, // sisa space akan terbagi rata
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      widgetlist.add(Text(
                        "Data ke- " + count.toString(), style: TextStyle(fontSize: 35),
                      ));
                      count++;
                    });
                  },
                  child: Text("Tambah Data"),
                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {
                      widgetlist.removeLast();
                      count--;
                    });
                  },
                  child: Text("Hapus Data"),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgetlist,
            )
          ],
        ),
      ),
    );
  }
}
