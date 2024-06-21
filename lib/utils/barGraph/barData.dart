import 'axisbarGraph.dart';

class Bardata {
  final double janMonth;
  final double febMonth;
  final double marMonth;
  final double aprMonth;
  final double mayMonth;
  final double junMonth;
  final double julMonth;
  // final double augMonth;
  // final double sepMonth;
  // final double octMonth;
  // final double novMonth;
  // final double decMonth;

  Bardata({
    required this.janMonth,
    required this.febMonth,
    required this.marMonth,
    required this.aprMonth,
    required this.mayMonth,
    required this.junMonth,
    required this.julMonth,
    // required this.augMonth,
    // required this.sepMonth,
    // required this.octMonth,
    // required this.novMonth,
    // required this.decMonth,
  });

  List<Axisbargraph> barData = [];

  void initializeBarData() {
    barData = [
      Axisbargraph(x: 0, y: janMonth),
      Axisbargraph(x: 1, y: febMonth),
      Axisbargraph(x: 2, y: marMonth),
      Axisbargraph(x: 3, y: aprMonth),
      Axisbargraph(x: 4, y: mayMonth),
      Axisbargraph(x: 5, y: junMonth),
      Axisbargraph(x: 6, y: julMonth),
      // Axisbargraph(x: 7, y: augMonth),
      // Axisbargraph(x: 8, y: sepMonth),
      // Axisbargraph(x: 9, y: octMonth),
      // Axisbargraph(x: 10, y: novMonth),
      // Axisbargraph(x: 11, y: decMonth),
    ];
  }
}