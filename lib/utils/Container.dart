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
  final String expDate;
  final Color percentageColor;

  const CardsContainer({
    Key? key,
    required this.amount,
    required this.percentage,
    required this.label,
    required this.percentageColor,
    required this.expDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Container(
        height: 260,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: percentageColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage("assets/images/debitlogo.png"),height: 40,width: 40,),
                      SizedBox(width: 75,),
                      Text(expDate, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(percentage, style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

               Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  children: [

                    Text(label, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5.0),
                      child: Text(amount, style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ],
                ),
              ),

          ],
        ),
      ),
    );
  }
}
class CardListContainer extends StatelessWidget {
  const CardListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Center(
        child: Container(
          height: 60, // Adjust height as needed
          width: 60,  // Adjust width as needed
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey,
          ),
          child: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
