import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
    return SafeArea(
      child: Scaffold(
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
                height: 40.h,
                width: 100.h,
                decoration: BoxDecoration(color: Colors.deepPurple, boxShadow: [
                  BoxShadow(color: Colors.black54, blurRadius: 60)
                ]),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Loan EMI is",
                      style: TextStyle(color: Colors.white, fontSize: 15.sp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "₹$answer",
                      style: TextStyle(color: Colors.white, fontSize: 45.sp),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Per Month",
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 2.h, right: 2.h, top: 25.h),
                  child: Container(
                    height: 55.h,
                    width: 200.w,
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
                              height: 0.5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h,right: 2.h,top: 2.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Loan Amount",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
                                  ),
                                  Text(
                                    "₹ $amount",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
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
                                  padding: EdgeInsets.only(right: 18.h,left: 3.h),
                                  child: Text(
                                    "10,000",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 12.sp
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text(
                                    "5,00,000",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 12.sp
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h,right: 2.h,top: 3.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Interest Rate",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
                                  ),
                                  Text(
                                    "$rate%",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
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
                                  padding: EdgeInsets.only(right: 18.h,left: 3.h),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 13.sp
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 90.sp),
                                  child: Text(
                                    "16",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 13.sp
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h,right: 2.h,top: 3.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Loan Tenure",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
                                  ),
                                  Text(
                                    "$year years",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
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
                                  padding: EdgeInsets.only(right: 18.h,left: 3.h),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 13.sp
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 115),
                                  child: Text(
                                    "20",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 13.sp
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 21,),
                            SizedBox(
                              height: 6.h,
                              width: 40.w,
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
                                  TextStyle(color: Colors.white, fontSize: 15.sp),
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
                  padding: EdgeInsets.only(left: 18.h,bottom: 5.h),
                ),
                ListTile(
                  title: Text("Home",style: TextStyle(color: Colors.white,fontSize: 18.sp),),
                ),
                ListTile(
                  title: Text("Profile",style: TextStyle(color: Colors.white,fontSize: 18.sp),),
                ),
                ListTile(
                  title: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 18.sp),),
                ),
              ],
            ),
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
              padding: EdgeInsets.only(top: 15.h),
              child: Text(
                "Your Loan EMI is",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6.sp

                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.h,top: 0.5.h),
                  child: Text.rich(
                      TextSpan(
                          children: [
                            TextSpan(
                              text: "₹ ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp
                              ),
                            ),
                            TextSpan(
                              text: "$answer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp
                              ),
                            ),
                          ]
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.h,),
                  child: Text(
                    "per\nmonth",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 4.sp
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.8.h),
              child: SizedBox(
                height: 3.h,
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
