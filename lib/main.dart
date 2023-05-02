import 'package:flutter/material.dart';
import 'package:myschool/HomePage.dart';
import 'package:myschool/SignUp.dart';
import 'package:myschool/SplashScreen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen1(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   var phone = TextEditingController();
   var password = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("YOUR SCHOOL"),
      ),
      body: Container(
        color: Colors.transparent,
        alignment: Alignment.center,
        child: 
        SingleChildScrollView(
          child: Container(
            height: 500,
            width: 400,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              //border: Border.all(width: 2),
            ),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,width: 300,
                  child: TextField(
                    controller: phone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'phone',
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
                      prefixIcon: IconButton(
                        icon: Icon(Icons.phone), onPressed: (){

                      },
                      )
                    ),
                  ),
                ),
                Container(height: 15,),
                SizedBox(height: 50, width: 300,
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: 'password',
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
                          width: 1,
                        )
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(Icons.key),onPressed:() {
                      },
                      ),
                    ),
                  ),
                ),
                Container(height: 40,),
                ElevatedButton(onPressed: (){

                  String PhoneNumber = phone.text;
                  String Password = password.text;

                  print("Phone, $PhoneNumber");
                  print("Password, $password");

                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

                }, child:Text("Login", style: TextStyle(),),),
                Container(height: 20,),
                TextButton(onPressed: (){

                }, child: Text('Forget password? ')),
                Container(height: 70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Don't Have any Account? "),
                    Container(width: 10,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));

                    }, child: Text("Sign up")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
