import 'package:application/controllers/bottomStyleSheet.dart';
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
class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      margin: EdgeInsets.only(right: 24,left: 24,bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(40)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
