import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/FIrstScreen.dart';
import 'package:flutter_application_1/SearchPage.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

var _currentIndex = 4;
var _previousIndex = 4;

var imageList = [
  AssetImage('images/search1.jpg'),
  AssetImage('images/search2.jpg'),
  AssetImage('images/search3.jpg'),
  AssetImage('images/search4.jpg'),
  AssetImage('images/search5.jpg'),
  AssetImage('images/search6.jpg'),
  AssetImage('images/search7.jpg'),
  AssetImage('images/search8.jpg'),
  AssetImage('images/search9.jpg'),
  AssetImage('images/search10.jpg'),
  AssetImage('images/search11.jpg'),
  AssetImage('images/search12.jpg'),
];

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({ Key? key }) : super(key: key);

  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[200],
        title: Row(mainAxisSize: MainAxisSize.max,
          children: [
            Text("                 "),
            Icon(Icons.lock,color: Colors.black,) ,
            Text(" My Profile", style: TextStyle(color: Colors.black),),
            Icon(Icons.arrow_drop_down_outlined,color: Colors.black,size: 35,)
          ],
        ) ,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          SizedBox(height: 130,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
              Text("  "),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 56,
                  backgroundColor: Colors.white,
                      child: CircleAvatar(  
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      backgroundImage: AssetImage("images/8.jpg"),
                      foregroundImage: AssetImage("images/8.jpg"),
                      radius: 52,
                  ),
                ),
            ),
            Text("    "),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("54                834                 162",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Text("   Posts        Followers      Following",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ],
            )
            ],),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("  InstaUser\n  Everything is designed",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          SizedBox(
            height: 437.8,
            child: StaggeredGridView.countBuilder(
            scrollDirection: Axis.vertical,
            itemCount: imageList.length,
            crossAxisCount: 3,
            mainAxisSpacing: 0.5,
            crossAxisSpacing: 0.5,
            itemBuilder: (context,index) => Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                  fit: BoxFit.fill,
                  image: imageList[index]),
                )
              ),
            ),
            staggeredTileBuilder: (index) => StaggeredTile.count(
              (index % 3 == 0)? 1:1 , (index%4 == 2)? 1: 1
            ),
          ),
          ),
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
