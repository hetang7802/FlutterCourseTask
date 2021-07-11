import 'package:flutter/material.dart';
import 'package:flutter_application_1/FirstScreen.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/main.dart';

String variable = "";
class MySignupPage extends StatefulWidget {
  const MySignupPage({ Key? key }) : super(key: key);

  @override
  _MySignupPageState createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[50],shadowColor: Colors.white,
        leading: IconButton(
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>homePage()));},
          icon: Icon(Icons.navigate_before,size: 40,color: Colors.black,)  
        ,),
        elevation: 0,
      ),
      body: Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Image(image: AssetImage('images/instagramLogo.png'),height: 80.0,),
          SizedBox(height: 50),
          Container(
            height: 40,
            color: Colors.grey[300],
            margin: EdgeInsets.only(left:7,right:7),
            child: TextFormField(
              controller: _userName,
              decoration: InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                )
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            color: Colors.grey[300],
            height: 40,
            margin: EdgeInsets.only(left:7,right:7),
            child: TextFormField(
              controller: _password,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,)
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 40,
            color: Colors.grey[300],
            margin: EdgeInsets.only(left:7,right:7),
            child: TextFormField(
              controller: _confirmPassword,
              decoration: InputDecoration(
                hintText: "ConfirmPassword",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,)
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            color: Colors.blue,
            height: 40,
            margin: EdgeInsets.only(left:7,right:7),
            child: FlatButton(
                minWidth: 400.0,
                color: Colors.blue,
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFirstScreen()));
                } ,
                child: Text(
                   "Sign up",
                   style: TextStyle(
                    color: Colors.white,
                   ),
                 ),
                 shape: RoundedRectangleBorder(side: BorderSide(
                    color: Colors.blue,
                    width: 1,
                    style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(0)),
              ),
          ),
            SizedBox(height: 60,),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                  child: Divider(
                  color: Colors.black,
                  height: 50,
                  )),
              ),

              Text("OR"),

              Expanded(
                child: new Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                  child: Divider(
                  color: Colors.black,
                  height: 50,
                  )),
              ),
             ],
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: (){Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=> MyLoginPage()));},
              child : RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Have an account? ",
                      style: TextStyle(color: Colors.grey)
                    ),
                    TextSpan(
                      text: "Log in",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(height: 235),
            Divider(thickness: 3),
            Center(child: Text("Instagram ot Facebook", style: TextStyle(color: Colors.grey),),)
        ]  
      ,)
     ,),
    );
  }
}