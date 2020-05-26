import 'package:flutter/material.dart';
import 'package:navigasi_multipage_screen/login_page.dart';

void main() {
  runApp(MyApp());
}
// page == route
// Login Page buang dan ganti dengan Push Replacement menjadi Main Page
//  Second di tumpuk dengan Main Page
// Pop untuk back atau kembali ke halaman
// Semuanya disebut Navigator

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
