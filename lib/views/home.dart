import 'package:application/controllers/bottomStyleSheet.dart';
import 'package:application/controllers/home_gradient.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // bottomSheet: BottomSheets(child: Text('data')),
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white.withOpacity(0.1),
          ),
          child: const Icon(Icons.add, color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: const Icon(Icons.notifications, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipOval(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      // color: Colors.white.withOpacity(0.1),
                    ),
                    child: Image.asset("assets/images/profile2.jpg"),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: colorGradient.colorsScaffold,
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text(
                          "Welcome,",
                          style: TextStyle(
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                                            padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 10.0),
                                            child: Column(
                                              children: [
                                                Text("Rs 800.65",style: TextStyle(color: Colors.white),),
                                                Text("+20.65%",style: TextStyle(color: Colors.green),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height:70 ),
                                          Text("Balance",style: TextStyle(color: Colors.white),),

                                        ],
                                      ),
                                  SizedBox(width: 35,height: 10,),
                                    Align(
                                      alignment: Alignment.topRight,
                                          child: ClipOval(
                                            child: Image.asset(
                                                "assets/images/arrow.png",width: 40,height: 40,),
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
                                        padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 10.0),
                                        child: Column(
                                          children: [
                                            Text("Rs 800.65",style: TextStyle(color: Colors.white),),
                                            Text("+20.65%",style: TextStyle(color: Colors.green),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height:70 ),
                                      Text("Balance",style: TextStyle(color: Colors.white),),

                                    ],
                                  ),
                                  SizedBox(width: 35,height: 10,),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: ClipOval(
                                      child: Image.asset(
                                        "assets/images/arrow.png",width: 40,height: 40,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              height: 150,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.2),
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 7.0,horizontal: 10.0),
                                        child: Column(
                                          children: [
                                            Text("Rs 800.65",style: TextStyle(color: Colors.white),),
                                            Text("+20.65%",style: TextStyle(color: Colors.green),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height:70 ),
                                      Text("Balance",style: TextStyle(color: Colors.white),),

                                    ],
                                  ),
                                  SizedBox(width: 35,height: 10,),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: ClipOval(
                                      child: Image.asset(
                                        "assets/images/arrow.png",width: 40,height: 40,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              height: 150,
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white.withOpacity(0.2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
