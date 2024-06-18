import 'package:application/controllers/listItems.dart';
import 'package:flutter/material.dart';
import 'debitClass.dart';

class StyleSheets extends StatefulWidget {
  const StyleSheets({super.key});

  @override
  State<StyleSheets> createState() => _StyleSheetsState();
}

class _StyleSheetsState extends State<StyleSheets> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      builder: (context, controller) => Container(
        color: Colors.white70,
        child: ListView.builder(
          controller: controller,
          itemCount: debitList.length,
          itemBuilder: (context, index) {
            final debit = debitList[index];
            return buildDebitItem(debit);
          },
        ),
      ),
    );
  }

  Widget buildDebitItem(DebitItem debit) => ListTile(
    title: Text(debit.title,style: TextStyle(fontSize: 24),),
    subtitle: Text(debit.price),
  );
}
