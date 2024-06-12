
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class TransactionController extends GetxController {
// void addTransaction(String title, String amount, String date) {
//   // Implement your logic to add a transaction
// }
// }
// class TransactionDialog {
//   final TransactionController controller;
//
//   TransactionDialog(this.controller);
//
//   void showAddTransactionDialog(BuildContext context) {
//     final titleController = TextEditingController();
//     final amountController = TextEditingController();
//     final dateController = TextEditingController();
//
//     Get.defaultDialog(
//       title: 'Add Transaction',
//       content: Column(
//         children: [
//           TextField(
//             controller: titleController,
//             decoration: const InputDecoration(labelText: 'Title'),
//           ),
//           TextField(
//             controller: amountController,
//             decoration: const InputDecoration(labelText: 'Amount'),
//           ),
//           TextField(
//             controller: dateController,
//             decoration: const InputDecoration(labelText: 'Date'),
//           ),
//         ],
//       ),
//       textCancel: 'Cancel',
//       textConfirm: 'Add',
//       onCancel: () {},
//       onConfirm: () {
//         if (titleController.text.isNotEmpty &&
//             amountController.text.isNotEmpty &&
//             dateController.text.isNotEmpty) {
//           controller.addTransaction(
//             titleController.text,
//             amountController.text,
//             dateController.text,
//           );
//           Get.back();
//         }
//       },
//     );
//   }
// }

// class AddwidgetController extends StatefulWidget {
//   const AddwidgetController({super.key});
//
//   @override
//   State<AddwidgetController> createState() => _AddwidgetControllerState();
// }
//
// class _AddwidgetControllerState extends State<AddwidgetController> {
//   List<Map<String, String>> cards = [
//     {'title': 'Balance', 'amount': '\$800.65', 'change': '+\$20.50'},
//     {'title': 'Income', 'amount': '\$400.35', 'change': '-\$70.50'},
//     {'title': 'Expense', 'amount': '\$950.05', 'change': '+\$50'},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
//   void _showAddWidgetDialog(BuildContext context) {
//     final titleController = TextEditingController();
//     final amountController = TextEditingController();
//     final changeController = TextEditingController();
//
//     Get.defaultDialog(
//       title: 'Add Widget',
//       content: Column(
//         children: [
//           TextField(
//             controller: titleController,
//             decoration: const InputDecoration(labelText: 'Title'),
//           ),
//           TextField(
//             controller: amountController,
//             decoration: const InputDecoration(labelText: 'Amount'),
//           ),
//           TextField(
//             controller: changeController,
//             decoration: const InputDecoration(labelText: 'Change'),
//           ),
//         ],
//       ),
//       textCancel: 'Cancel',
//       textConfirm: 'Add',
//       onCancel: () {},
//       onConfirm: () {
//         if (titleController.text.isNotEmpty &&
//             amountController.text.isNotEmpty &&
//             changeController.text.isNotEmpty) {
//           final newCard = {
//             'title': titleController.text,
//             'amount': amountController.text,
//             'change': changeController.text,
//           };
//           setState(() {
//             cards.add(newCard);
//           });
//           Get.back();
//         }
//       },
//     );
//   }
// }
