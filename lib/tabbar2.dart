
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(home: tabbar2(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
    ),
  ));
}
class tabbar2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 7,
      child: Scaffold(
        appBar: AppBar(title:Text("Messenger"),backgroundColor:Colors.blue,
          actions: [



PopupMenuButton(itemBuilder: (context){return[
  PopupMenuItem(child: Text("My profile"),),
  PopupMenuItem(child: Text("Privacy"),),
  PopupMenuItem(child: Text("Edit profile")),
  PopupMenuItem(child: Text("Log out")),

  ];} )
  ],
          bottom: TabBar(isScrollable: true,tabs: [Tab(child:
            Icon(Icons.group)),Tab(child:
            Text("Chats"),),
          Tab(child: Text("Calls"),),
            Tab(child: Text("Stories"),),
            Tab(child: Text("Contacts"),),
            Tab(child: Text("Archieves"),),
            Tab(child: Text("channels"),)],
          ),
        ),body: TabBarView(children: [


          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Column(
              children: [
                Icon(Icons.person,size: 40,color: Colors.red,),
                Text("Launch Soon!!",style: TextStyle(color: Colors.red),)
              ],
            ),
          ),
      ],),
      ),
    );



  }


}