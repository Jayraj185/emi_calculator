import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double amount = 0;
  double rate = 0;
  double year = 0;
  double answer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "EMI CALCULATOR",
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Stack(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.deepPurple, boxShadow: [
                BoxShadow(color: Colors.black54, blurRadius: 60)
              ]),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Loan EMI is",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "₹$answer",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Per Month",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 215),
                child: Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(color: Colors.black54, blurRadius: 10),
                  ],
                  borderRadius: BorderRadius.circular(10)
                  ),
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15,right: 15,top: 21),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Loan Amount",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Text(
                                  "₹ $amount",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Slider(
                            value: amount,
                            inactiveColor: Colors.pink.shade50,
                            thumbColor: Colors.pink,
                            activeColor: Colors.pink.shade50,
                            onChanged: (value) {
                              setState(() {
                                amount = value;
                              });
                            },
                            max: 500000,
                            divisions: 50,

                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 160,left: 22),
                                child: Text(
                                  "10,000",
                                  style: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 15
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 45),
                                child: Text(
                                  "5,00,000",
                                  style: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 15
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15,right: 15,top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Interest Rate",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Text(
                                  "$rate%",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Slider(
                            value: rate,
                            inactiveColor: Colors.pink.shade50,
                            thumbColor: Colors.pink,
                            activeColor: Colors.pink.shade50,
                            onChanged: (value) {
                              setState(() {
                                rate = value;
                              });
                            },
                            max: 16,
                            divisions: 160,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 160,left: 22),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 15
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 115),
                                child: Text(
                                  "16",
                                  style: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 15
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15,right: 15,top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Loan Tenure",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                Text(
                                  "$year years",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Slider(
                            value: year,
                            inactiveColor: Colors.pink.shade50,
                            thumbColor: Colors.pink,
                            activeColor: Colors.pink.shade50,
                            onChanged: (value) {
                              setState(() {
                                year = value;
                              });
                            },
                            max: 20,
                            divisions: 20,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 160,left: 22),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 15
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 115),
                                child: Text(
                                  "20",
                                  style: TextStyle(
                                      color: Colors.black12,
                                      fontSize: 15
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 21,),
                          SizedBox(
                            height: 50,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  answer = (amount*rate*year)/100;
                                  showModalBottomSheet(context: context, builder: (context) => bottomsheet(),);
                                });

                              },
                              child: Text(
                                "Calculate",
                                style:
                                TextStyle(color: Colors.white, fontSize: 21),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepPurple,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.deepPurple,
          child: ListView(
            children: [
              DrawerHeader(
                child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close,color: Colors.white,size: 50,)
                ),
                padding: EdgeInsets.only(left: 185,bottom: 50),
              ),
              ListTile(
                title: Text("Home",style: TextStyle(color: Colors.white,fontSize: 21),),
              ),
              ListTile(
                title: Text("Profile",style: TextStyle(color: Colors.white,fontSize: 21),),
              ),
              ListTile(
                title: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 21),),
              ),
            ],
          ),
        ),
    );
  }
  Widget bottomsheet(){
    return Transform.scale(
      scale: 2.5,
      child: Container(
        color: Colors.deepPurple,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 130),
              child: Text(
                "Your Loan EMI is",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 145,top: 8),
                  child: Text.rich(
                      TextSpan(
                          children: [
                            TextSpan(
                              text: "₹ ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),
                            ),
                            TextSpan(
                              text: "$answer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21
                              ),
                            ),
                          ]
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10,left: 1),
                  child: Text(
                    "per\nmonth",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 5
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 25,
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),
                      child: Text("Finish"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
