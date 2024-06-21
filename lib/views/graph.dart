import 'package:application/controllers/home_gradient.dart';
import 'package:application/utils/barGraph/barGraph.dart';
import 'package:flutter/material.dart';

class GraphView extends StatefulWidget {
  const GraphView({super.key});

  @override
  State<GraphView> createState() => _GraphViewState();
}

class _GraphViewState extends State<GraphView> {
  List<double> monthySum = [26, 21, 65.42, 45.50, 50.20, 52.99, 35.10];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: colorGradient.colorsScaffold,
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              forceMaterialTransparency: true,
              leading: const Text(
                "Cards",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black38),
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
                    SizedBox(height: 20,),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38
                      ),
                        child: Center(
                          child: SizedBox(
                              height: 240,
                              child: MyBarGraph(
                                monthlySummary: monthySum,
                              )),
                        )),
                  ],
                ))),
      ),
    );
  }
}
