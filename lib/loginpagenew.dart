import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/Staggeredviewexmple.dart';
import 'package:newflutterproject/view.dart';

void main(){


  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: loginnew(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class loginnew extends StatefulWidget{
  @override
  State<loginnew> createState() => _loginnewState();
}

class _loginnewState extends State<loginnew> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar:  AppBar(title: Text("Login Page"),leading: Icon(Icons.menu),),

     body:SingleChildScrollView(
    child:Form(
    key:formkey,
      child: Column(children: [
         

         Center(child: Text("Login Here",style: TextStyle(color: Colors.red,fontSize: 30),)),
         SizedBox(
           height: 20,
         ),
         TextFormField(decoration: InputDecoration(hintText: "Email/username",prefixIcon: Icon(Icons.email),
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
             validator: (uname){
               if(uname!.isEmpty || uname.contains("#")|| uname.contains("/")){
                 return "Enter valid username";
               }
               else{
                 return null;
               }
             }),
         SizedBox(height: 20),
            TextFormField(obscureText: showpass,obscuringCharacter: "*",
              decoration: InputDecoration(hintText: "Password",prefixIcon: Icon(Icons.password),suffixIcon:
                IconButton(onPressed: (){
                  setState(() {
                    if(showpass){
                      showpass=false;
                    }
                    else{
                      showpass=true;
                    }
                  });
                },icon: Icon(showpass==true?Icons.visibility_off:Icons.visibility),),
                
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                validator: (password){
                  if(password!.isEmpty || password.length<6|| password.contains("/")){
                    return "Enter valid passsword";
                  }
                  else{
                    return null;
                  }
                }),
            SizedBox(height: 20),Container(
                child: TextButton(onPressed: (){},
                    child: Text("ALready have an account",style: TextStyle(color: Colors.blue,fontSize: 15),))),

         SizedBox(height: 20),Container(
           child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red,side: BorderSide(width: 1.5)),
               onPressed: (){
             final valid=formkey.currentState!.validate();
             if(valid){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>grid4(),));
             }
               }, child: Text("Login"),
           ),
         )

       ],),
     ),



     ) );
  }
}