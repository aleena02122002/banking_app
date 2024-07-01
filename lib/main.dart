
import 'package:application/views/Cards.dart';
import 'package:application/views/graph.dart';
import 'package:application/views/home.dart';
import 'package:application/views/homePage.dart';
import 'package:application/views/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
   const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
