import 'package:application/utils/barGraph/barData.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyBarGraph extends StatelessWidget {
  final List monthlySummary;
  const MyBarGraph({super.key, required this.monthlySummary});

  @override
  Widget build(BuildContext context) {
    Bardata myBarData = Bardata(
        janMonth: monthlySummary[1],
        febMonth: monthlySummary[2],
        marMonth: monthlySummary[3],
        aprMonth: monthlySummary[4],
        mayMonth: monthlySummary[5],
        junMonth: monthlySummary[6],
        julMonth: monthlySummary[7],
        augMonth: monthlySummary[8],
        sepMonth: monthlySummary[9],
        octMonth: monthlySummary[10],
        navMonth: monthlySummary[11],
        decemberMonth: monthlySummary[12]);
    myBarData.initializeBarData();
    return BarChart(BarChartData(
      maxY: 100,
      minY: 0,
    ));
  }
}
