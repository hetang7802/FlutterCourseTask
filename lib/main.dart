import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/SignUp.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: homePage(),
    );
  }
}

int counter =0;

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);
   
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  var variable = null;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 250),
            Image(image: AssetImage('images/instagramLogo.png'),
            width: 300.0,
            height: 80.0,),
            // Text(
            // "Instagram",
            // style: GoogleFonts.bilbo(fontSize: 50.0,
            //   fontWeight: FontWeight.bold,
            // ),
            
            //),
            SizedBox(height: 80),
            FlatButton(
              minWidth: 250.0,
              color: Colors.blue,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyLoginPage()));
              },
               child: Text(
                 "Log in",
                 style: TextStyle(
                   color: Colors.white,
                 ),
               )
            ),
            SizedBox(height: 20),
            FlatButton(
              minWidth: 250.0,
              color: Colors.white,
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MySignupPage()));
              } ,
              child: Text(
                 "Sign up",
                 style: TextStyle(
                  color: Colors.blue,
                 ),
               ),
               shape: RoundedRectangleBorder(side: BorderSide(
                  color: Colors.blue,
                  width: 1,
                  style: BorderStyle.solid
                ), borderRadius: BorderRadius.circular(0)),
            )
          ],
        )
      )  
    );
  }
}
