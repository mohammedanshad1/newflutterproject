
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';


void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
        MaterialApp(home: stackeg1(),
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
        ),
  ));
}
class stackeg1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => stackState();



}
class stackState extends State<stackeg1>{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
appBar: AppBar(title: Text("Calls"),backgroundColor: Colors.blue,

bottom:
  TabBar(tabs: [
      Tab(child: Icon(Icons.call_made_sharp),),
      Tab(child: Icon(Icons.call_missed),),
      Tab(child: Icon(Icons.call_received),)
  ],),
),
        body: TabBarView(children: [
          Homepage(),
          ListTile(title: Text("Anshad"),
          subtitle: Text("74848934"),

          ),


          ListTile(title: Text("thaslim"),
          subtitle: Text("833992002"),
          ),






        ],),

      ),
    );
  }


}