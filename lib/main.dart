import 'package:emi_calculator/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context,ori,type){
        return MaterialApp(
          title: "EMI Calculator",
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      },
    ),
  );
}

