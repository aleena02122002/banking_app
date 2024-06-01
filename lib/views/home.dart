
import 'package:application/controllers/bottomStyleSheet.dart';
import 'package:application/controllers/home_gradient.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: BottomSheets(child: Text('data')),
      appBar: AppBar(

      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: colorGradient.colorsScaffold,
        ),
      ),
    );
  }
}
