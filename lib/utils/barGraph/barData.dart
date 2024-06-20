import 'axisbarGraph.dart';

class Bardata{
  final double janMonth;
  final double febMonth;
  final double marMonth;
  final double aprMonth;
  final double mayMonth;
  final double junMonth;
  final double julMonth;
  final double augMonth;
  final double sepMonth;
  final double octMonth;
  final double navMonth;
  final double decemberMonth;

  Bardata ({required this.janMonth,required this.febMonth,required this.marMonth,required this.aprMonth,required this.mayMonth,required this.junMonth,required this.julMonth,required this.augMonth,required this.sepMonth,required this.octMonth,required this.navMonth,required this.decemberMonth});


  List<Axisbargraph> barData = [];

  void initializeBarData(){
    barData = [
      Axisbargraph(x: 0, y: janMonth),
      Axisbargraph(x: 0, y: febMonth),
      Axisbargraph(x: 0, y: marMonth),
      Axisbargraph(x: 0, y: aprMonth),
      Axisbargraph(x: 0, y: mayMonth),
      Axisbargraph(x: 0, y: junMonth),
      Axisbargraph(x: 0, y: julMonth),
      Axisbargraph(x: 0, y: augMonth),
      Axisbargraph(x: 0, y: sepMonth),
      Axisbargraph(x: 0, y: octMonth),
      Axisbargraph(x: 0, y: navMonth),
      Axisbargraph(x: 0, y: decemberMonth),
    ];
  }
}