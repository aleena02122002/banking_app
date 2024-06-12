import 'package:application/utils/bottomNavigation.dart';
import 'package:application/controllers/home_gradient.dart';
import 'package:application/utils/Container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Map<String, String>> cards = [];

  void addCard(Map<String, String> card) {
    setState(() {
      cards.add(card);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white.withOpacity(0.1),
            ),
            child: const Icon(Icons.add, color: Colors.white),
          ),
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white.withOpacity(0.1),
                    ),
                    child: const Icon(Icons.notifications, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ClipOval(
                    child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("assets/images/profile2.jpg"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: colorGradient.colorsScaffold,
            ),
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome,",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              HomeContainer(
                                  amount: "Rs 800.65",
                                  percentage: "20.65%",
                                  label: "Balance",
                                  percentageColor: Colors.green),
                              HomeContainer(
                                  amount: "Rs 800.65",
                                  percentage: "20.50%",
                                  label: "Income",
                                  percentageColor: Colors.green),
                            ],
                          ),
                          SizedBox(height: 10),
                          Column(
                            children: _buildRows(),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    SizedBox(height: 265),
                    MyNavigationBar(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildRows() {
    List<Widget> rows = [];
    for (int i = 0; i < cards.length; i += 2) {
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (i < cards.length) HomeContainer(
              amount: cards[i]['amount']!,
              percentage: cards[i]['change']!,
              label: cards[i]['title']!,
              percentageColor: cards[i]['change']!.startsWith('-') ? Colors.red : Colors.green,
            ),
            if (i + 1 < cards.length) HomeContainer(
              amount: cards[i + 1]['amount']!,
              percentage: cards[i + 1]['change']!,
              label: cards[i + 1]['title']!,
              percentageColor: cards[i + 1]['change']!.startsWith('-') ? Colors.red : Colors.green,
            ),
            if (i + 1 == cards.length) AddWidget(addCardCallback: addCard),
          ],
        ),
      );
    }
    if (cards.length % 2 == 0) {
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AddWidget(addCardCallback: addCard),
          ],
        ),
      );
    }
    return rows;
  }
}

class AddWidget extends StatefulWidget {
  final Function(Map<String, String>) addCardCallback;

  const AddWidget({super.key, required this.addCardCallback});

  @override
  State<AddWidget> createState() => _AddWidgetState();
}

class _AddWidgetState extends State<AddWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
      child: Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.1),
        ),
        child: Column(
          children: [
            SizedBox(height: 30.0),
            GestureDetector(
              onTap: () {
                _showDetailContainer(context);
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white.withOpacity(0.2),
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text("Add Widget", style: TextStyle(color: Colors.white)),
          ],
        ),
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
                    labelText: "Percentage",
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
                    'amount': amountController.text,
                    'change': percentageController.text,
                  };
                  widget.addCardCallback(newCard);
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
