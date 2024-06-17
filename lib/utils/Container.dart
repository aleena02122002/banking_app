import 'package:flutter/material.dart';
class HomeContainer extends StatelessWidget {
  final String amount;
  final String percentage;
  final String label;
  final percentageColor;

   const HomeContainer({super.key, required this.amount,required this.percentage,required this.label,required this.percentageColor});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
      child: Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.1),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
                  child: Column(
                    children: [
                      Text(amount, style: TextStyle(color: Colors.white)),
                      Text(percentage, style: TextStyle(color: percentageColor)),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Text(label, style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(width: 35, height: 10),
            Align(
              alignment: Alignment.topRight,
              child: ClipOval(
                child: Image.asset("assets/images/arrow.png", width: 40, height: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardsContainer extends StatelessWidget {
  final String amount;
  final String percentage;
  final String label;
  final percentageColor;

  const CardsContainer({super.key, required this.amount,required this.percentage,required this.label,required this.percentageColor});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
      child: Container(
        height: 250,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.1),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
                  child: Column(
                    children: [
                      Text(amount, style: TextStyle(color: Colors.white)),
                      Text(percentage, style: TextStyle(color: percentageColor)),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Text(label, style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(width: 35, height: 10),
            Align(
              alignment: Alignment.topRight,
              child: ClipOval(
                child: Image.asset("assets/images/arrow.png", width: 40, height: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

