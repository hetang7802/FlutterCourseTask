import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/FirstScreen.dart';

var ListOfProfileNames = [
  "user1","user2","user3","user4","user5","user6","user7","user8","user9","user10","user11","user12",
];
var ListOfProfilePics = [
  "images/1.jpg","images/2.jpg","images/3.jpg","images/4.jpg","images/5.jpg","images/6.jpg","images/7.jpg"
  ,"images/8.jpg","images/9.jpg","images/10.jpg","images/1 (1).png","images/12.jpg"
];

Widget getListView(){
  var listView = ListView.builder(
    itemCount: ListOfProfileNames.length,
    itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          leading: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.redAccent,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                    child: CircleAvatar(  
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    backgroundImage: AssetImage(ListOfProfilePics[index]),
                    foregroundImage: AssetImage(ListOfProfilePics[index]),
                    radius: 22,
                ),
              ),
          ),
          title: Text(ListOfProfileNames[index]),
          trailing: Icon(Icons.camera_alt_outlined),
        ),
      );
    },
  );
  return listView;
}



class MyDmPage extends StatefulWidget {
  const MyDmPage({ Key? key }) : super(key: key);

  @override
  _MyDmPageState createState() => _MyDmPageState();
}

class _MyDmPageState extends State<MyDmPage> {
  var _SearchController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('currentUser'),
        leading: IconButton(icon : Icon(Icons.navigate_before), 
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFirstScreen()));
        },),
        centerTitle: true,
        actions: [
          Icon(Icons.add),
          Text("    "),
        ],
      ),
      
      body: Column(
        children: [
          SizedBox(height: 50,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: TextFormField(
                      controller: _SearchController,
                        decoration: InputDecoration(
                          hintText: "Search",
                          icon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,)
                        ),
                      ),
            ),
          ),
          SizedBox(
            height: 650,
            child: getListView(),
          ),
          SizedBox(
            height: 55,
            child: ListTile(
              tileColor: Colors.grey[200],
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("                             "),
                  Icon(CupertinoIcons.camera_on_rectangle,color: Colors.blue,size: 30,),
                  Text("  Camera",style: TextStyle(color: Colors.blue),),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}



