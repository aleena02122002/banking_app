import 'package:application/controllers/home_gradient.dart';
import 'package:application/utils/barGraph/barGraph.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GraphView extends StatefulWidget {
  const GraphView({super.key});

  @override
  State<GraphView> createState() => _GraphViewState();
}

class _GraphViewState extends State<GraphView> {
  List<double> monthySum = [35000, 31000, 60000, 42000, 45000, 32000, 38000];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: Scaffold(
              backgroundColor: Colors.transparent,
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                forceMaterialTransparency: true,
                title: const Text(
                  "Graph",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black),
                ),
                actions: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back, color: Colors.black)),
                  ),
                ],
              ),
              body: SafeArea(
                  child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 255,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Colors.grey[200]),
                                    child: Icon(Icons.payment),
                                  ),
                                ),
                                Text(
                                  'Expense',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.grey[200]),
                                  child: Icon(Icons.sort),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.grey[200]),
                                  child: Icon(Icons.arrow_forward),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height: 190,
                              child: MyBarGraph(
                                monthlySummary: monthySum,
                              )),
                        ],
                      )),
                ],
              ))),
        ),
      ),
    );
  }
}
