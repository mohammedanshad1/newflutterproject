import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/MyApp.dart';


void main(){

  runApp(DevicePreview(
    builder: (BuildContext context)=>
    MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner:
      false,

      home: Newpage(),
    ),
  ));
}

class Newpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>NewState();

}
class NewState extends State<Newpage>{

  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login page"),),

     body:Container(decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1694161097603-2858ec0107fe?ixlib=rb-4.0."
         "3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1899&q=80"),fit: BoxFit.cover)),
         child: Column(children: [
       
       SizedBox(height: 20,),
       Center(child: Text("Login page",style: TextStyle(color: Colors.black,fontSize: 20),)),


       SizedBox(height: 20,),
       Padding(
         padding: const EdgeInsets.only(left: 500,right: 500),
         child: TextField(decoration: InputDecoration(hintText: "email",labelText: "email",prefixIcon: Icon(Icons.email),
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
       ),
SizedBox(height: 20,),

       Padding(
         padding: const EdgeInsets.only(left: 500,right: 500),
         child: TextField(obscuringCharacter: "*",obscureText: showpass,decoration: InputDecoration(hintText: "oassword",labelText: "password",
             prefixIcon: Icon(Icons.email),suffixIcon: IconButton(onPressed: (){setState(() {
               if(showpass){
                 showpass=false;
               }
               else{
                 showpass=true;
               }
             });},  icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),



             border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
       ),SizedBox(height: 20,),
      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red,side: BorderSide(width: 1.6)),onPressed: (){},
          child: Text("Login")),
       TextButton(onPressed: (){

       }, child: Text("create new account"))

         ]
    )
    )

    );
       



      /* Row(
         children: [
           Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png")),Padding(
             padding: const EdgeInsets.only(left: 200,top: 200),
             child: Row(children: [
               Padding(
                 padding: const EdgeInsets.only(right: 200,bottom: 200),
                 child: Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png")),
               ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 300),
                 child: Text("FC BARCELONA",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,color: Colors.red),),
               ),
             ],),
           )
         ],






       ),*/




    
  }
}