

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/Registration%20form.dart';

import 'package:newflutterproject/loginpagedemo.dart';

import 'MyApp.dart';


void main(){
runApp(MaterialApp(home: Registrationpage(),
));
}

class Registrationpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> RegistrationState();

}
class RegistrationState extends State<Registrationpage>{
@override

  bool showpass=true;
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(title: Text("Registration page"),),

   body:Container(decoration: BoxDecoration(image: DecorationImage(image: NetworkImage
     ("https://images.unsplash.com/photo-1682687980918-"
     "3c2149a8f110?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2071&q=80",),
       fit: BoxFit.fitWidth)
   ),

   child:Column(children: [SizedBox(height: 20,),
       Center(child: Text("Register Here",style: TextStyle(color: Colors.red,fontSize: 25,),),
       ),
SizedBox(height: 20,),
       Padding(
         padding: const EdgeInsets.only(left: 500,right: 500),
         child: TextField(decoration: InputDecoration(hintText: "First name",labelText: "First name",prefixIcon: Icon(Icons.person),border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),
       ),SizedBox(height: 20,),
       Padding(
         padding: const EdgeInsets.only(left: 500,right: 500),
         child: TextField(decoration: InputDecoration(hintText: "Last name",labelText: "Last name",prefixIcon: Icon(Icons.person),border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),
       ),
       SizedBox(height: 20), Padding(
         padding: const EdgeInsets.only(left: 500,right: 500),
         child: TextField(decoration: InputDecoration(hintText: "Email",labelText: "Email",prefixIcon: Icon(Icons.email),border: OutlineInputBorder(borderRadius: BorderRadius.
             circular(15))),),
       ),
   SizedBox(height: 20,),
     Padding(
       padding: const EdgeInsets.only(left: 500,right: 500),
       child: TextField(obscureText: showpass,obscuringCharacter: "*",decoration: InputDecoration(hintText: "password",labelText: "password",
           prefixIcon: Icon(Icons.password),
           suffixIcon: IconButton(onPressed: (){

         setState(() {
           if(showpass){
             showpass=false;
           }
           else{
              showpass=true;
           }
         });
       },icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),)
           ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),
     ),  SizedBox(height: 20,),
     Padding(
       padding: const EdgeInsets.only(left: 500,right: 500),
       child: TextField(obscureText: showpass,obscuringCharacter: "*",decoration:
       InputDecoration(hintText: "Confirm password",labelText: "Confirm password",prefixIcon: Icon(Icons.password),suffixIcon: IconButton(onPressed: (){
         setState(() {
           if(showpass){
             showpass=false;
           }
           else{
             showpass=true;
           }
         });
       },icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),)
           ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),),),
       SizedBox(height: 20,),
       ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red,side: BorderSide(width:1.0),),onPressed: (){},child:
       Text("Register"),
       ),
           SizedBox(height: 20,),Center(
             child: TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),));
             }, child:Text("Already have an account!!",style: TextStyle(color:Colors.blue,fontSize: 15 ),)

             ),
           )],),),
 );



  }


}