import 'package:application/utils/Container.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
   Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xFFe0e9f1),
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: const Text("Cards",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black38),),
          actions: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white.withOpacity(0.2),
              ),
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const CardsContainer(amount: "Rs 15,000.00", percentage: "8426 9823 0957 3674", label: "Balance", percentageColor: Color(0xFF1F2F3C),expDate: "12/24",),
                    CardsContainer(amount: "Rs 15,000.00", percentage: "8426 9823 0957 3674", label: "Balance", percentageColor: Colors.grey.shade400,expDate: "09/25",),
                  ],
                ),
              ),
              const Text("Transactions"),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController2,
                      scrollDirection: Axis.vertical,
                      child: const Column(
                        children: [
                          CardListContainer(label: "Transctions",date: "31 May 2024",amount: "Rs -1000",),
                          CardListContainer(label: "Shopping",date: "31 May 2024",amount: "Rs -8000",),
                          CardListContainer(label: "Transctions",date: "31 May 2024",amount: "Rs -1000",),
                          CardListContainer(label: "Transctions",date: "31 May 2024",amount: "Rs -1000",),
                          CardListContainer(label: "Transctions",date: "31 May 2024",amount: "Rs -1000",),
                          CardListContainer(label: "Transctions",date: "31 May 2024",amount: "Rs -1000",),
                          CardListContainer(label: "Transctions",date: "31 May 2024",amount: "Rs -1000",),
                          CardListContainer(label: "Transctions",date: "31 May 2024",amount: "Rs -1000",),
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
