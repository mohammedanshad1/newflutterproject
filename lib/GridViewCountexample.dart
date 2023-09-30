import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){


  runApp(DevicePreview(
    builder: (BuildContext context)
    => MaterialApp(useInheritedMediaQuery:true,debugShowCheckedModeBanner:false,home: Gridview(),

    ),
  ));
}

class Gridview extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> GridState();


}
class GridState extends State<Gridview>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Grid View"),),

      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisSpacing: 20,crossAxisCount: 3,crossAxisSpacing: 20),
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.red,
            child:Column(
            children: [
              Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
              Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
            ],
          ),


          ),
        )
        ,
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.blue,
          child: Column(
            children: [
              Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png",),height: 70,width: 50,),
              Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
            ],
          )),
        ),
        
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.yellow,
              child: Column(
            children: [
              Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
              Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.orange,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.green,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.greenAccent,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.redAccent,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.lightGreen,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.lime,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.brown,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.teal,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.blueGrey,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.red,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),  Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.white,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
                  Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
                ],
              )),
        ),
        
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Card(color: Colors.white10,
              child: Column(
            children: [
              Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),height: 70,width: 50,),
              Text("Fc Barcelona",style: TextStyle(color: Colors.black),)
            ],
          )),
        ),
     /*  Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),
        Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),
        Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),
        Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),
        Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),
        Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),
        Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),
        Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),
        Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),
        Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),
        Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png")),*/
      ],),
    );
  }
  
  
}