import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){


  runApp(DevicePreview(

    builder: (BuildContext context)=>
        MaterialApp(debugShowCheckedModeBanner: false,useInheritedMediaQuery:true,home: Gridview(),
        ),
  ));
}
class Gridview extends StatelessWidget{
  var clr=[Colors.red,Colors.yellow,Colors.green,Colors.pinkAccent,Colors.teal,Colors.lightGreen];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text("Grid View"),),

        body: GridView.custom(gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), childrenDelegate: SliverChildBuilderDelegate((context,index){
          return
          Column(
            children: [
              Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png"),height: 70,width: 50,),
              Text("Apple",style: TextStyle(fontSize: 25,color: Colors.black),)
            ],
          );


        })


    )
    );

  }


}