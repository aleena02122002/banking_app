import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white38,
      appBar: AppBar(
        leading: Text("My Cards"),
        actions: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white.withOpacity(0.2),
            ),
            child: Icon(Icons.arrow_back, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
