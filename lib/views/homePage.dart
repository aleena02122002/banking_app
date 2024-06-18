import 'package:application/controllers/home_gradient.dart';
import 'package:application/utils/bottomNavigation.dart';
import 'package:application/views/home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
        bottomNavigationBar: MyNavigationBar(),
        body: Container(
            decoration: BoxDecoration(
              gradient: colorGradient.colorsScaffold,
            ),
            child: HomeView()),
      );
  }
}
