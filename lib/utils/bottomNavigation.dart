import 'package:application/controllers/bottomStyleSheet.dart';
import 'package:application/views/Cards.dart';
import 'package:application/views/graph.dart';
import 'package:application/views/home.dart';
import 'package:flutter/material.dart';

// class MyNavigationBar extends StatefulWidget {
//   const MyNavigationBar({super.key});
//
//   @override
//   State<MyNavigationBar> createState() => _MyNavigationBarState();
// }
//
// class _MyNavigationBarState extends State<MyNavigationBar> {
//   int index = 0;
//
//   final screens= [
//     HomeView(),
//     GraphView(),
//     Card(),
//     BottomSheets(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[index],
//       bottomNavigationBar: NavigationBarTheme(
//         data: NavigationBarThemeData(
//             labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
//         ),
//         child: NavigationBar(
//             height: 60,
//             selectedIndex: index,
//             onDestinationSelected: (index) => setState(() => this.index = index),
//             destinations: const [
//               NavigationDestination(
//                 icon: Icon(Icons.home_outlined),
//                 label: '',
//               ),
//               NavigationDestination(
//                 icon: Icon(Icons.auto_graph),
//                 label: '',
//               ),
//               NavigationDestination(
//                 icon: Icon(Icons.credit_card),
//                 label: '',
//               ),
//               NavigationDestination(
//                 icon: Icon(Icons.add),
//                 label: '',
//               ),
//             ]),
//       ),
//     );
//   }
// }
class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int index = 0;

  List<IconData> navIcons = [
    Icons.home_outlined,
    Icons.bar_chart,
    Icons.credit_card_outlined
  ];

  final screens = [
    HomeView(),
    GraphView(),
    Cards(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.white38,
          )
        ],
        borderRadius: BorderRadius.circular(30)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
              backgroundColor: Colors.white54,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white30,
              currentIndex: index,
              onTap: (int newIndex) {
                setState(() {
                  index = newIndex;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: "Home", ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bar_chart), label: "Graph"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.credit_card_rounded), label: "Cards"),
              ]),
        ),
      );
  }
}
