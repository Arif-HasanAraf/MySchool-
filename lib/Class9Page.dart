import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myschool/Commarce.dart';
import 'package:myschool/Humanities.dart';
import 'package:myschool/Science.dart';

class Class9Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 9 & 10"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(height: 30,),
                Text("বিভাগ", style: TextStyle(fontSize: 30),),
                Container(height: 50,),
                SizedBox(
                  height: 50, width: 300,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Science()));
                  },
                      child:
                      Container(
                        height: 50,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("বিজ্ঞান", style: TextStyle(fontSize: 20, color: Colors.white),),
                      )),
                ),
                Container(height: 25,),
                SizedBox(
                  height: 50, width: 300,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Commarce()));

                  },
                      child:
                      Container(
                        height: 50,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("ব্যাবস্যায় শিক্ষা", style: TextStyle(fontSize: 20, color: Colors.white),),
                      )),
                ),
                Container(height: 25,),
                SizedBox(
                  height: 50, width: 300,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Humanities()));

                  },
                      child:
                      Container(
                        height: 50,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("মানবিক", style: TextStyle(fontSize: 20, color: Colors.white),),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}