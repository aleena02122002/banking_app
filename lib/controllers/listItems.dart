import 'package:flutter/material.dart';
class DebitListManager {
  List<Map<String, String>> _debitList = [
    {'title': 'Transaction', 'price': 'Rs 10,000','date':'08/01/23'},
    {'title': 'Grocery', 'price': 'Rs 14,000','date':'08/01/23'},
    {'title': 'Shopping', 'price': 'Rs 15,000','date':'08/01/23'},
    {'title': 'Utilities', 'price': 'Rs 20,000','date':'08/01/23'},
    {'title': 'Rent', 'price': 'Rs 30,000','date':'08/01/23'},
    {'title': 'Transportation', 'price': 'Rs 5,000','date':'08/01/23'},
    {'title': 'Health', 'price': 'Rs 5,000','date':'08/01/23'},
  ];

  List<Map<String, String>> get debitList => _debitList;

  void addDebitItem(Map<String, String> newItem) {
    _debitList.add(newItem);
  }
}

final DebitListManager debitListManager = DebitListManager();