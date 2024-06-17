import 'package:application/utils/Container.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0xFFe0e9f1),
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: Text("Cards",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black38),),
          actions: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white.withOpacity(0.2),
              ),
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardsContainer(amount: "Rs 15,000.00", percentage: "8426 9823 0957 3674", label: "Balance", percentageColor: Color(0xFF1F2F3C),expDate: "12/24",),
                    CardsContainer(amount: "Rs 15,000.00", percentage: "8426 9823 0957 3674", label: "Balance", percentageColor: Colors.grey.shade400,expDate: "09/25",),
                  ],
                ),
              ),
              Text("Transactions"),
              CardListContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
