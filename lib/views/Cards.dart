import 'package:application/controllers/home_gradient.dart';
import 'package:application/utils/Container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cards extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
   Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Scaffold(

            extendBodyBehindAppBar: true,
            appBar: AppBar(
              forceMaterialTransparency: true,
              title: const Text("Cards",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
              actions: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child:  IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back, color: Colors.black)),
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
                        const CardsContainer(amount: "Rs 1,000.00", percentage: "8426 9823 0957 3674", label: "Balance", percentageColor: Color(0xFF1F2F3C),expDate: "12/24",),
                        CardsContainer(amount: "Rs 25,000.00", percentage: "8475 7429 0052 1680", label: "Balance", percentageColor: Colors.grey.shade400,expDate: "09/25",),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(alignment: Alignment.centerLeft,child: const Text("Transactions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                      Expanded(
                        child: SingleChildScrollView(
                          controller: _scrollController2,
                          scrollDirection: Axis.vertical,
                          child: const Column(
                            children: [
                              CardListContainer(label: "Transction",date: "16 Jun 2024",amount: "Rs 20000",),
                              CardListContainer(label: "Electric Bill",date: "16 Jun 2024",amount: "Rs 15000",),
                              CardListContainer(label: "SSGC Bill",date: "16 Jun 2024",amount: " Rs 1000",),
                              CardListContainer(label: "Cradit Card",date: "16 Jun 2024",amount: "Rs 8000",),
                              CardListContainer(label: "Shopping",date: "20 May 2024",amount: "Rs 20000",),
                              CardListContainer(label: "Transaction",date: "15 May 2024",amount: "Rs 12000",),
                              CardListContainer(label: "Electric Bill",date: "15 May 2024",amount: "Rs 1000",),
                              CardListContainer(label: "SSGC Bill",date: "15 May 2024",amount: "Rs 13000",),
                            ],
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
