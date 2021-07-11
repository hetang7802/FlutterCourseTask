import 'package:flutter/material.dart';
import 'package:flutter_application_1/FirstScreen.dart';
import 'package:flutter_application_1/SignUp.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({ Key? key }) : super(key: key);

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    var _userName;
    var _password;
        return Scaffold(
          appBar: AppBar(backgroundColor: Colors.grey[50],shadowColor: Colors.white,
            leading: IconButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MySignupPage()));},
              icon: Icon(Icons.navigate_before,size: 40,color: Colors.black,)  
            ,),
            elevation: 0,
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                Image(image: AssetImage('images/instagramLogo.png')),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  color: Colors.grey[300],
                  margin: EdgeInsets.only(left:7,right:7),
                  child: TextFormField(
                    controller: _userName,
                      decoration: InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,)
                      ),
                    ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(left:7,right:7),
                  color: Colors.grey[300],
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child : RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: "Forgot Password?",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                FlatButton(
                  minWidth: 350.0,
                  color: Colors.blue,
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFirstScreen()));
                  } ,
                  child: Text(
                    "Log In",
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
            SizedBox(height: 20),
            GestureDetector(
              child : RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Colors.grey,fontSize: 17)
                    ),
                    TextSpan(
                      text: "Sign up",
                      style: TextStyle(color: Colors.blue,fontSize: 17),
                    ),
                  ]
                ),
              ),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> MySignupPage()));},
            ),
            SizedBox(height: 200),
            Divider(thickness: 3),
            SizedBox(height: 8),
            Center(child: Text("Instagram ot Facebook", style: TextStyle(color: Colors.grey),),)
          ],
        )
      ,),
    );
  }
}