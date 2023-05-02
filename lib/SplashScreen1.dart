import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/SignUp.dart';
import 'package:myschool/main.dart';

class SplashScreen1 extends StatefulWidget{
  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/img1.png",), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white54,
              border: Border.all(
                width: 3,
                color: Colors.black
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2, spreadRadius: 2
                )
              ]
            ),
            child: Center(
              child: Text("WELCOME TO YOUR SCHOOL", style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic
              ),),
            ),
          ),
        ),
      ),
    );
  }
}