import 'package:application/controllers/home_gradient.dart';
import 'package:application/utils/barGraph/barGraph.dart';
import 'package:flutter/material.dart';

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
          color: Colors.white54,
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
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.black),
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

                          color: Colors.grey),
                      child: Column(
                        children: [
                          Row(children: [
                            Container(decoration: BoxDecoration(),),
                            Text('Expense',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

                          ],),
                           SizedBox(
                                height: 210,
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
