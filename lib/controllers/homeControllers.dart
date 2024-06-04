
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionController extends GetxController {
void addTransaction(String title, String amount, String date) {
  // Implement your logic to add a transaction
}
}
class TransactionDialog {
  final TransactionController controller;

  TransactionDialog(this.controller);

  void showAddTransactionDialog(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    final dateController = TextEditingController();

    Get.defaultDialog(
      title: 'Add Transaction',
      content: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: amountController,
            decoration: const InputDecoration(labelText: 'Amount'),
          ),
          TextField(
            controller: dateController,
            decoration: const InputDecoration(labelText: 'Date'),
          ),
        ],
      ),
      textCancel: 'Cancel',
      textConfirm: 'Add',
      onCancel: () {},
      onConfirm: () {
        if (titleController.text.isNotEmpty &&
            amountController.text.isNotEmpty &&
            dateController.text.isNotEmpty) {
          controller.addTransaction(
            titleController.text,
            amountController.text,
            dateController.text,
          );
          Get.back();
        }
      },
    );
  }
}
