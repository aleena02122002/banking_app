import 'package:application/controllers/bottomStyleSheet.dart';
import 'package:application/views/graph.dart';
import 'package:application/views/home.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int index = 0;

  final screens= [
    HomeView(),
    GraphView(),
    Card(),
    BottomSheets(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
        ),
        child: NavigationBar(
            height: 60,
            selectedIndex: index,
            onDestinationSelected: (index) => setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.auto_graph),
                label: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.credit_card),
                label: '',
              ),
              SizedBox(width: 10,),
              NavigationDestination(
                icon: Icon(Icons.add),
                label: '',
              ),
            ]),
      ),
    );
  }
}
