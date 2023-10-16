import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/login%20with%20validate.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: navigator5(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false)));
}
class navigator5 extends StatefulWidget{
  @override
  State<navigator5> createState() => _navigator5State();
}

class _navigator5State extends State<navigator5> {

  var show=[Text("Tab"),
    Text("Camera"),
    Text("Chats"),


      ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("phone",style: TextStyle(color: Colors.blue),),backgroundColor: Colors.white,
        bottom: TabBar(tabs: [
          Tab(child: Text("Incoming",style: TextStyle(color: Colors.black),),),
          Tab(child: Text("Outgoing",style: TextStyle(color: Colors.black),),),
          Tab(child: Text("Missed",style: TextStyle(color: Colors.black),),),



        ],),),
        bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.purpleAccent,selectedItemColor: Colors.blue,unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,currentIndex: index,
          onTap: (tapindex){
          setState(() {

            index=tapindex;
          });
          },

          items: [

          BottomNavigationBarItem(icon: Icon(Icons.call),label: "Tab"),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: "Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat"),


        ],),
        body: Center(child: show[index]),

      ),
    );
  }
}