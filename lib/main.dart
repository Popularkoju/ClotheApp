// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:ecommerce_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xffffafafa),
        primaryColor: Color(0xffffbd00),
        accentColor: Color(0xffffebc7),
      ),
      home: HomePage(),
    );
  }
}
