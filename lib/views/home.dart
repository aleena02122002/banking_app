import 'package:application/controllers/bottomNavigation.dart';
import 'package:application/controllers/bottomStyleSheet.dart';
import 'package:application/controllers/home_gradient.dart';
import 'package:application/utils/Container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
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
          child: const SafeArea(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Text(
                            "Welcome,",
                            style: TextStyle(
                              fontSize: 20,
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            HomeContainer(amount: "Rs 800.65",
                                percentage: "20.65%",
                                label: "Balance",
                                percentageColor: Colors.green),
                            HomeContainer(amount: "Rs 800.65",
                                percentage: "20.50%",
                                label: "Income",
                                percentageColor: Colors.green),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            HomeContainer(amount: "Rs 800.65",
                                percentage: "-18.50%",
                                label: "Expense",
                                percentageColor: Colors.red),
                            AddWidget(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 265,),
                 MyNavigationBar(),
                ],
              ),
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     showModalBottomSheet(
        //       context: context,
        //       builder: (context) {
        //         return BottomSheets(child: Text("Sheets"));
        //       },
        //     );
        //   },
        //   child: Icon(Icons.add,color: Colors.white,),
        //   backgroundColor: Colors.white.withOpacity(0.2),
        // ),
      ),
    );
  }
}