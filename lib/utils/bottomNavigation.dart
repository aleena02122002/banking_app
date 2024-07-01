import 'package:application/controllers/add_transaction_alet_box.dart';
import 'package:application/controllers/listItems.dart';
import 'package:application/utils/bottomStyleSheet.dart';
import 'package:application/controllers/home_gradient.dart';
import 'package:application/views/Cards.dart';
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

  List<IconData> navIcons = [
    Icons.home_outlined,
    Icons.bar_chart,
    Icons.credit_card_outlined,
    Icons.add // Assuming you want to keep this icon
  ];

  final screens = [
    HomeView(),
    GraphView(),
    Cards(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (index < screens.length)
            screens[index],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                gradient: colorGradient.colorsScaffold,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white24,
                    offset: Offset(4, 4),
                    blurRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (int i = 0; i < navIcons.length; i++)
                        IconButton(
                          icon: Icon(
                            navIcons[i],
                            color: i == index
                                ? Color(0xFF1F2F3C)
                                : Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              if (i == 3) {
                                _showDetailContainer(context);
                              } else {
                                index = i;
                              }
                            });
                          },
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDetailContainer(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    final percentageController = TextEditingController();
    final focusnode1 = FocusNode();
    final focusnode2 = FocusNode();
    final focusnode3 = FocusNode();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white54,
          content: Container(
            height: 250,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Text(
                  "Detail Container",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 20),
                TextField(
                  focusNode: focusnode1,
                  controller: titleController,
                  decoration: InputDecoration(
                    labelText: "Title",
                  ),
                ),
                TextField(
                  focusNode: focusnode2,
                  controller: amountController,
                  decoration: InputDecoration(
                    labelText: "Amount",
                  ),
                ),
                TextField(
                  focusNode: focusnode3,
                  controller: percentageController,
                  decoration: InputDecoration(
                    labelText: "Date",
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (titleController.text.isNotEmpty &&
                    amountController.text.isNotEmpty &&
                    percentageController.text.isNotEmpty) {
                  final newCard = {
                    'title': titleController.text,
                    'price': amountController.text,
                    'date': percentageController.text,
                  };

                  setState(() {
                    debitListManager.addDebitItem(newCard);
                  });

                  Navigator.of(context).pop();
                }
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }
}
