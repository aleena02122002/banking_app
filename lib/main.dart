
import 'package:application/views/Cards.dart';
import 'package:application/views/home.dart';
import 'package:application/views/homePage.dart';
import 'package:application/views/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
   const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cards(),
    );
  }
}
