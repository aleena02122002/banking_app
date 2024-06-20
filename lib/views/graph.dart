import 'package:application/utils/barGraph/barGraph.dart';
import 'package:flutter/material.dart';

class GraphView extends StatefulWidget {
  const GraphView({super.key});

  @override
  State<GraphView> createState() => _GraphViewState();
}

class _GraphViewState extends State<GraphView> {
  List<double> monthySum = [4.40, 2.50, 42.42, 10.50, 100.20, 88.99, 90.10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Center(child: SizedBox(height: 200, child: MyBarGraph(monthlySummary: monthySum,))));
  }
}
