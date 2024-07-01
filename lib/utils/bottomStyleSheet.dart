import 'package:application/controllers/listItems.dart';
import 'package:flutter/material.dart';

class StyleSheets extends StatefulWidget {
  const StyleSheets({super.key});

  @override
  State<StyleSheets> createState() => _StyleSheetsState();
}

class _StyleSheetsState extends State<StyleSheets> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (context, controller) => ListView.builder(
          controller: controller,
          itemCount: debitListManager.debitList.length,
          itemBuilder: (context, index) {
            final debit = debitListManager.debitList[index];
            return buildDebitItem(debit);
          },
        ),
    );
  }

  Widget buildDebitItem(Map<String, String> debit) => ListTile(
    leading: Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: Colors.grey,
    ),
      child: Icon(Icons.payment_rounded,color: Colors.white,),
    ),
    title: Text(debit['title']!, style: TextStyle(fontSize: 20)),
    subtitle: Text(debit['date']!),
    trailing: Text(debit['price']!),
  );


}