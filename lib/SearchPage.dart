import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/FirstScreen.dart';
import 'package:flutter_application_1/ProfilePage.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';

var _currentIndex=1;
var _previousIndex=1;

var imageList = [
  AssetImage('images/search2.jpg'),
  AssetImage('images/search1.jpg'),
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

class MySearchPage extends StatefulWidget {
  const MySearchPage({ Key? key }) : super(key: key);

  @override
  _MySearchPageState createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  var _searchController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: TextField(
             controller: _searchController, 
             decoration: InputDecoration(
               icon: Icon(Icons.search,color: Colors.black,),
               fillColor: Colors.black,
               hintText: "Search",
               contentPadding: EdgeInsets.only(left: 5, right: 20),
             ),
            ),
          ),
        ),
      ),

      body: Container(
        height: 720,
        color: Colors.grey[350],
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
              (index % 3 == 0)? 2:1 , (index%4 == 2)? 2: 1
            ),
          ),
        
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
              // setState(() {
              //   _previousIndex = _currentIndex;
              //   _currentIndex = index;
              // });
              switch (index) {
                case 0: Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFirstScreen()));break;
                case 1: Navigator.push(context, MaterialPageRoute(builder: (context)=>MySearchPage()));break;
                case 2: print("yet to code");break;
                case 3: print("yet to code");break;
                case 4: Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfilePage()));break;
                default:Navigator.push(context, MaterialPageRoute(builder: (context)=>MySearchPage()));
              }
            },
           
        ),

    );
  }
}
