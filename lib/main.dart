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
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("EMI"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          height: 100.h,
          width: 150,
          color: Colors.purple,
        ),
      ),
    );
  }
}

