import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/login%20with%20validate.dart';

void main(){


  runApp(DevicePreview(
    builder: (BuildContext context)
    => MaterialApp(home: navigationbar(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
    ),
  ));
}

class navigationbar extends StatefulWidget{
  @override
  State<navigationbar> createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {

  var screen=["Home",
  "Lunches",
  "cart",
  "Account"
  ,"Login"];
  @override
  int index=0;
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Navigation bar"),),

     bottomNavigationBar: BottomNavigationBar(currentIndex: index,backgroundColor: Colors.red,
       selectedItemColor: Colors.black,unselectedItemColor: Colors.green,
       type: BottomNavigationBarType.fixed,
       onTap: (tapindex){
       setState(() {
         index=tapindex;
       });
       },
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.lunch_dining),label: "lunches"),
         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "cart"),
         BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),label: "account"),
         BottomNavigationBarItem(

             icon: IconButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> Login_with_validate()));
    },
             icon: Icon(Icons.login),),
           label: "login",)
       ],
     ),
     body: Center(child: Text(screen[index])),

   );
  }
}