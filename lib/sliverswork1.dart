import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
 => MaterialApp(home: slivers4(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class slivers4 extends StatelessWidget{

  var text=[
    "Sliver item 1",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",
    "Sliver item  2",



  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: CustomScrollView(
       slivers: [
       SliverAppBar(floating: true,pinned: true,
         title: Text("Slivers List Example"),leading: Icon(Icons.menu),
       actions: [
         Icon(Icons.person)
       ],
         bottom: AppBar(
           title: Container(color: Colors.white,
             child: TextField(decoration: InputDecoration(hintText: "Location/city",prefixIcon: Icon(Icons.location_city,),),),
           )

           ),elevation: 0,
         ),

       SliverList(delegate: SliverChildBuilderDelegate((context, index) {

         return
             Container(child:Column(children: [
ListTile(
  title: Text(text[index],style: TextStyle(color: Colors.black87),),
),Divider(color: Colors.grey,)
             ],) );
       },childCount: text.length)),

     ],),
   );
  }


}