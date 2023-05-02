import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget{
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var SignUpName = TextEditingController();
  var SignUpNumber = TextEditingController();
  var SignUpBD = TextEditingController();
  var SignUpPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BECOME A MEMBER"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.transparent,
            height: 600,
            width: 400,
            child: Column(
              children: [
                Container(height: 25,),
                //Heading
                Container(
                  child: Text('Sign Up here, ', style: TextStyle(fontSize: 25),),
                ),
                Container(height: 50),
                // Enter Name
                SizedBox(height: 50, width: 300,
                  child: TextField(
                    controller: SignUpName,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: " Full Name",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.black12,
                          width: 2,
                        ),
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(Icons.person), onPressed: (){
                      },
                      )

                    ),
                  ),
                ),
                Container(height: 20),
                // Enter Phone
                SizedBox(height: 50, width: 300,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: SignUpNumber,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          width: 3, color: Colors.indigo
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.black12,
                        )
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(Icons.phone),onPressed: (){
                      },
                      ),
                    ),
                  ),
                ),
                Container(height: 20,),
                // Enter Birthday
                SizedBox(height: 50,width: 300,
                  child: TextField(
                    controller: SignUpBD,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: 'Birth date',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 3,
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.black12,
                          width: 2,
                        )
                      ),
                      prefixIcon: Icon(
                        Icons.calendar_month,
                      )
                    ),
                  ),
                ),
                Container(height: 20,),
                // Enter Password
                SizedBox(height: 50, width: 300,
                  child: TextField(
                    controller: SignUpPassword,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: 'Password',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 3,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.black12,
                          width: 2,
                        )
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(Icons.key), onPressed: (){

                      },
                      )
                    ),
                  ),
                ),
                Container(height: 50,),
                ElevatedButton(onPressed: (){
                  String Sname = SignUpName.text;
                  String Sphone = SignUpName.text;
                  String Sbd = SignUpBD.text;
                  String Spassword = SignUpPassword.text;

                }, child: Text('Sign Up')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}