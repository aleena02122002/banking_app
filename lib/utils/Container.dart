import 'package:flutter/material.dart';
class HomeContainer extends StatelessWidget {
  final String amount;
  final String percentage;
  final String label;
  final percentageColor;

   const HomeContainer({super.key, required this.amount,required this.percentage,required this.label,required this.percentageColor});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.1),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
                  child: Column(
                    children: [
                      Text(amount, style: TextStyle(color: Colors.white)),
                      Text(percentage, style: TextStyle(color: percentageColor)),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Text(label, style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(width: 35, height: 10),
            Align(
              alignment: Alignment.topRight,
              child: ClipOval(
                child: Image.asset("assets/images/arrow.png", width: 40, height: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class AddWidget extends StatefulWidget {
//   const AddWidget({super.key});
//
//   @override
//   State<AddWidget> createState() => _AddWidgetState();
// }
//
// class _AddWidgetState extends State<AddWidget> {
//   List<Map<String, String>> cards = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Expanded(
//         child: Container(
//           height: 150,
//           width: 170,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//             color: Colors.white.withOpacity(0.1),
//           ),
//           child: Column(
//             children: [
//               SizedBox(height: 30.0),
//               GestureDetector(
//                 onTap: () {
//                   _showDetailContainer(context);
//                 },
//                 child: Container(
//                   height: 60,
//                   width: 60,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     color: Colors.white.withOpacity(0.2),
//                   ),
//                   child: Icon(Icons.add, color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text("Add Widget", style: TextStyle(color: Colors.white)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _showDetailContainer(BuildContext context) {
//     final titleController = TextEditingController();
//     final amountController = TextEditingController();
//     final percentageController = TextEditingController();
//     final focusnode1 = FocusNode();
//     final focusnode2 = FocusNode();
//     final focusnode3 = FocusNode();
//
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           backgroundColor: Colors.white54,
//           content: Container(
//             height: 250,
//             width: 150,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: Column(
//               children: [
//                 Text(
//                   "Detail Container",
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   focusNode: focusnode1,
//                   controller: titleController,
//                   decoration: InputDecoration(
//                     labelText: "Title",
//                   ),
//                 ),
//                 TextField(
//                   focusNode: focusnode2,
//                   controller: amountController,
//                   decoration: InputDecoration(
//                     labelText: "Amount",
//                   ),
//                 ),
//                 TextField(
//                   focusNode: focusnode3,
//                   controller: percentageController,
//                   decoration: InputDecoration(
//                     labelText: "Percentage",
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 if (titleController.text.isNotEmpty &&
//                     amountController.text.isNotEmpty &&
//                     percentageController.text.isNotEmpty) {
//                   final newCard = {
//                     'title': titleController.text,
//                     'amount': amountController.text,
//                     'change': percentageController.text,
//                   };
//                   setState(() {
//                     cards.add(newCard);
//                   });
//                   Navigator.of(context).pop();
//                 }
//               },
//               child: Text('Confirm'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
