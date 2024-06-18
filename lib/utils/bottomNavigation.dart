import 'package:application/controllers/bottomStyleSheet.dart';
import 'package:application/controllers/home_gradient.dart';
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
    Icons.credit_card_outlined,
    Icons.add  // Assuming you want to keep this icon
  ];

  final screens = [
    HomeView(),
    GraphView(),
    Cards(),
    // StyleSheets() ,// Renamed to better reflect the view's purpose
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: screens[index],  // This will change the screen based on the index
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white38,
            )
          ],
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Color(0xFF1F2F3C),
            unselectedItemColor: Color(0xFF4F5962),
            currentIndex: index,
            onTap: (int newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart),
                  label: "Graph"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card_outlined),
                  label: "Cards"
              ),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.add),
              //     label: "Add"
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

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
//     Cards(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[index],
//       bottomNavigationBar: NavigationBarTheme(
//         data: NavigationBarThemeData(
//             labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 15,fontWeight: FontWeight.w500))
//         ),
//         child: ClipRRect(
//           child: NavigationBar(
//               height: 60,
//               selectedIndex: index,
//               onDestinationSelected: (index) => setState(() => this.index = index),
//               destinations: const [
//                 NavigationDestination(
//                   icon: Icon(Icons.house_outlined),
//                   label: 'home',
//                 ),
//                 NavigationDestination(
//                   icon: Icon(Icons.favorite_border),
//                   label: 'favorite',
//                 ),
//                 NavigationDestination(
//                   icon: Icon(Icons.shopping_bag_outlined),
//                   label: 'cart',
//                 ),
//               ]),
//         ),
//       ),
//     );
//   }
// }
