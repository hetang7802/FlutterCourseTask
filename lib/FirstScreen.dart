import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/DmPage.dart';
import 'package:flutter_application_1/ProfilePage.dart';
import 'package:flutter_application_1/SearchPage.dart';
import 'package:flutter_application_1/main.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({ Key? key }) : super(key: key);

  @override
  _MyFirstScreenState createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  var variable;

  var _currentIndex=0;
  var _previousIndex=0;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.photo_camera_outlined,color: Colors.black,size:30),
        title: Center(child: Image.asset('images/instagramLogo.png',fit: BoxFit.contain,height: 50)),
        toolbarHeight: 50,
        actions: <Widget>[
          Image(image: AssetImage('images/igtvLogo.png'),width: 40,height: 50,),
          IconButton(
            color: Colors.black,
            icon: IconButton(
              icon: Icon(CupertinoIcons.paperplane,size: 30,),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> MyDmPage()));},
            ),
            onPressed: (){setState(() {
              variable++;
            });},
          ),
        ],
        backgroundColor: Colors.grey[200],        
      ),
      body:Column(
        children: <Widget>[
          SizedBox(height: 5, child:Divider(height: 3,)),
          SizedBox(
                height: 65,
                child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(children: [
                  Text("\t"),
                  storyWidget("user1", AssetImage('images/1.jpg')),
                  Text("\t\t\t"),
                  storyWidget("user2", AssetImage('images/2.jpg')),
                  Text("\t\t\t"),
                  storyWidget("user3", AssetImage('images/3.jpg')),
                  Text("\t\t\t"),
                  storyWidget("user4", AssetImage('images/4.jpg')),
                  Text("\t\t\t"),
                  storyWidget("user5", AssetImage('images/5.jpg')),
                  Text("\t\t\t"),
                  storyWidget("user6", AssetImage('images/6.jpg')),
                  Text("\t\t\t"),
                  storyWidget("user7", AssetImage('images/7.jpg')),
                  Text("\t\t\t"),
                  storyWidget("user8", AssetImage('images/8.jpg')),
                  Text("\t\t\t"),
                  storyWidget("user9", AssetImage('images/9.jpg')),
                  Text("\t\t\t"),
                  storyWidget("user10", AssetImage('images/10.jpg')),
                  Text("\t\t\t"),
                  storyWidget("user11", AssetImage('images/12.jpg')),
                  Text("\t\t\t"),
                ],),
                ),
            ),
              SizedBox(
                height: 628,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Divider(thickness: 3,),
                      postWidget("user5", 'images/city1.jpg', 'images/5.jpg',context),
                      SizedBox(height: 20, child :Divider(thickness:2)),
                      postWidget("user3", 'images/city2.jpg', 'images/3.jpg',context),
                      SizedBox(height: 20, child :Divider(thickness:2)),
                      postWidget("user7", 'images/city3.jpg', 'images/7.jpg',context),
                      SizedBox(height: 20, child :Divider(thickness:2)),
                      postWidget("user8", 'images/city4.jpg', 'images/8.jpg',context),
                      SizedBox(height: 20, child :Divider(thickness:2)),
                      postWidget("user5", 'images/city5.jpg', 'images/5.jpg',context),
                      SizedBox(height: 20, child :Divider(thickness:2)),
                      postWidget("user9", 'images/city6.jpg', 'images/9.jpg',context),
                      SizedBox(height: 20, child :Divider(thickness:2)),
                      postWidget("user7", 'images/flower1.jpg', 'images/7.jpg',context),
                      SizedBox(height: 20, child :Divider(thickness:2)),
                      postWidget("user8", ('images/flower2.jpg'), 'images/8.jpg',context),
                      SizedBox(height: 20, child :Divider(thickness:2)),
                      postWidget("user1", ('images/flower3.jpg'), 'images/1.jpg',context),
                      SizedBox(height: 20, child :Divider(thickness:2)),
                      postWidget("user9", ('images/space1.jpg'), 'images/9.jpg',context),
                      SizedBox(height: 20, child :Divider(thickness:2)),
                      postWidget("user12", ('images/space2.jpg'), 'images/12.jpg',context),
                    ],
                  ),
                //),
            ),
              )
        ],
      ),
  
      bottomNavigationBar: 
        BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          backgroundColor: Colors.grey[400],
           items: [
             BottomNavigationBarItem(
               icon : _currentIndex==0? Icon(Icons.home,color: Colors.black,): Icon(Icons.home),
               title: Text(""),
               backgroundColor: Colors.grey
               ),

             BottomNavigationBarItem(icon : _currentIndex==1? Icon(Icons.search,color: Colors.black,): Icon(Icons.search)
             ,title: Text(""),backgroundColor: Colors.grey),

             BottomNavigationBarItem(icon : _currentIndex==2? Icon(CupertinoIcons.plus_app,color: Colors.black,): Icon(CupertinoIcons.plus_app)
             ,title: Text(""),backgroundColor: Colors.grey),

             BottomNavigationBarItem(icon : _currentIndex==3? Icon(Icons.favorite,color: Colors.black,): Icon(Icons.favorite)
             ,title: Text(""),backgroundColor: Colors.grey),

             BottomNavigationBarItem(icon : _currentIndex==4? Icon(CupertinoIcons.profile_circled,color: Colors.black,): Icon(CupertinoIcons.profile_circled)
             ,title: Text(""),backgroundColor: Colors.grey),
           ],
           onTap: (index){
            //  setState(() {
            //     _previousIndex = _currentIndex;
            //     _currentIndex = index;
            //   });
              switch (index) {
                case 0: Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFirstScreen()));break;
                case 1: Navigator.push(context, MaterialPageRoute(builder: (context)=>MySearchPage()));break;
                case 2: print("yet to code");break;
                case 3: print("yet to code");break;
                case 4: Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfilePage()));break;
                default:Navigator.push(context, MaterialPageRoute(builder: (context)=>MySearchPage()));
              }
              print(index);
            },
           
        ),
      
    );
  }
}

Widget storyWidget(String name, var image){
  return Column(
    children: [
      CircleAvatar(
        radius: 22,
        backgroundColor: Colors.redAccent,
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
              child: CircleAvatar(  
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              backgroundImage: image,
              foregroundImage: image,
              radius: 18,
          ),
        ),
    ),
    Text(name),
    ],
  );
}


Widget postWidget(String name,var imagePath, var profilePic, var context ){
  return Column(
    children: [
      ListTile(
        leading: Container(
          height: 80,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.redAccent,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                      child: CircleAvatar(  
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      backgroundImage: AssetImage(profilePic),
                      foregroundImage: AssetImage(profilePic),
                      radius: 18,
                  ),
                ),
              ),
              Text("  $name",style: TextStyle(fontSize: 28),),
            ],
          ),
        ),
      ),
      SizedBox(height: 2),
      Container(
        height: 300,
        width: 400,
        child: Image.asset(imagePath,fit: BoxFit.fill,),
      ),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(" "),
          IconButton(icon: Icon(Icons.favorite_border),onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You liked this post"),duration: Duration(milliseconds: 120),),
           );},),
          Text("\t"),
          IconButton(icon: Icon(Icons.comment),onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Add a comment"),duration: Duration(milliseconds: 120)));},),
          Text("\t"),
          IconButton(icon: Icon(CupertinoIcons.paperplane),onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Forward this post"),duration: Duration(milliseconds: 120)));},),
        ],
      )
    ],
  );
}