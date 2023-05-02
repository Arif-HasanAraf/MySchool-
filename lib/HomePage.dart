import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/Class6Page.dart';
import 'package:myschool/Class7Page.dart';
import 'package:myschool/Class9Page.dart';
import 'Class8Page.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(height: 40,),
            Text("শ্রেণিসমূহ", style: TextStyle(fontSize: 30),),
            Container(height: 40,),

            ElevatedButton( onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Class6Page()));
            },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                 // border: Border.all(color: Colors.indigo, width: 3),
                ),
                child: Text('ষষ্ঠ শ্রেণি', style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
            ),

            Container(height: 25,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Class7Page()));
            },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  //border: Border.all(color: Colors.indigo,width: 3),
                ),
                child: Text('সপ্তম শ্রেণি', style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
            ),

            Container(height: 25,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Class8Page()));

            },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  //border: Border.all(color: Colors.indigo, width: 3,),
                ),
                child: Text('অষ্টম শ্রেণি', style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
            ),
            Container(height: 25,),

            ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> Class9Page()));
            },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                 // border: Border.all(color: Colors.indigo, width: 3),
                ),
                child: Text('নবম ও দশম শ্রেণি', style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
