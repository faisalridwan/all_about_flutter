import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// leading = drawer burger button
// titile = container, row, icon and title
// action = icon button, setting, logout etc
// bottom =  tabbar,
// flexibleSpace == diluar leading atau bottom untuk gradasi

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text(
            "AppBar Example",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
            IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff0096ff), Color(0xff6610f2)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight),
                image: DecorationImage(
                    image: AssetImage("assets/pattern.png"),
                    fit: BoxFit.fill,
                    repeat: ImageRepeat.repeat)),
          ),
        ),
      ),
    );
  }
}
