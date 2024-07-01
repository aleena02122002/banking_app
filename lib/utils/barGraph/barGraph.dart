import 'package:application/utils/barGraph/barData.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyBarGraph extends StatelessWidget {
  final List<double> monthlySummary;
  const MyBarGraph({super.key, required this.monthlySummary});

  @override
  Widget build(BuildContext context) {
    Bardata myBarData = Bardata(
      janMonth: monthlySummary[0],
      febMonth: monthlySummary[1],
      marMonth: monthlySummary[2],
      aprMonth: monthlySummary[3],
      mayMonth: monthlySummary[4],
      junMonth: monthlySummary[5],
      julMonth: monthlySummary[6],
      // augMonth: monthlySummary[7],
      // sepMonth: monthlySummary[8],
      // octMonth: monthlySummary[9],
      // novMonth: monthlySummary[10],
      // decMonth: monthlySummary[11],
    );
    myBarData.initializeBarData();
    return BarChart(
      BarChartData(
        maxY: 100000,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: getBottomTitles,
              ),
            )
        ),
        barGroups: myBarData.barData
            .map(
              (data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                      toY: data.y,
                      width: 35,
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(6),
                      // backDrawRodData: BackgroundBarChartRodData(
                      //     show: true, toY: 100, color: Colors.grey[200])
                    ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const style = TextStyle(
      color: Colors.black38, fontWeight: FontWeight.bold, fontSize: 14);
  Widget text;
  switch (value.toInt()) {
    case 0:
      text = Text("Jan", style: style);
      break;
    case 1:
      text = Text("Feb", style: style);
      break;
    case 2:
      text = Text("Mar", style: style);
      break;
    case 3:
      text = Text("Apr", style: style);
      break;
    case 4:
      text = Text("May", style: style);
      break;
    case 5:
      text = Text("Jun", style: style);
      break;
    case 6:
      text = Text("Jul", style: style);
      break;
    default:
      text = Text('', style: style);
  }
  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}