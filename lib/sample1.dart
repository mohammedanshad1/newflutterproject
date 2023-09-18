import 'dart:async';
import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutterproject/MyApp.dart';
import 'package:newflutterproject/Registerpage.dart';

void main(){

 runApp(MaterialApp(home: Newpage(),
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
    appBar: AppBar(title: Text("Login page")),
    body:
    Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.red,Colors.green,Colors.yellow],begin: Alignment.topRight,end:
        Alignment.topLeft
    ),),
      child: Column(children: [
        SizedBox(height: 20,),Text("login Page",style: GoogleFonts.lato(
        textStyle: Theme.of(context).textTheme.displayLarge,
        fontSize: 48,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
      ),),



      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.only(left: 500,right: 500),
        child: TextField(decoration: InputDecoration(hintText: "email",labelText: "email",prefixIcon: Icon(Icons.email),border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),
      ),
      SizedBox(height: 20,),Padding(
        padding: const EdgeInsets.only(left: 500,right: 500),
        child: TextField(obscureText: showpass,obscuringCharacter: "*",decoration: InputDecoration(hintText: "password",labelText: "password",prefixIcon: Icon(Icons.password),
            suffixIcon:IconButton(onPressed:(){ setState(() {
              if (showpass) {
                showpass = false;
              }
              else {
                showpass = true;
              }
            } ); },icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),
      ),SizedBox(height: 20,),

      Padding(
        padding: const EdgeInsets.only(left: 500,right: 500),
        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red,side: BorderSide(width: 1.0),),
            onPressed: (){}, child: Text("Login")),
      ),SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.only(left: 500,right: 500),
        child: TextButton(onPressed: (){}, child: Text("Already have an Account!!",style: TextStyle(color: Colors.blue,fontSize: 15),)),
      ),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.only(left: 500,right: 500),
        child: TextButton(onPressed: (){

        }, child: Text("Create New Account",style: TextStyle(color: Colors.blue,fontSize: 15),)),
      )
      ],),
    )
  );
  }


}