import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/MyApp.dart';
import 'package:newflutterproject/Registerpage.dart';



void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<LoginPage> {

@override


  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("loginpage")),
        body: Container(
          child: Column(children: [
            SizedBox(height: 20,),
            Text("Login page",style: TextStyle(color: Colors.red,fontSize: 25),),SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 500, right: 500),
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "username",
                      labelText: "username",
                      icon: Icon(Icons.login),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ))),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 500, right: 500),
              child: TextField(
                obscuringCharacter: "*",
                obscureText: showpass,
                decoration: InputDecoration(
                    hintText: "password",
                    labelText: "password",
                    icon: Icon(Icons.password), suffixIcon: IconButton(onPressed: (){setState(() { if(showpass) {
                  showpass = false;
                }
                else{
                  showpass=true;
                }}

    );},
          icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),



                border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 500,right: 500),
              child: SizedBox(height: 20),
            ),
            SizedBox(height: 20,),Padding(
              padding: const EdgeInsets.only(left: 500,right: 500),
              child: TextButton(onPressed: (){}, child: Text("sign up")),
            ),
           SizedBox(height: 20,),ElevatedButton(style:ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,side: BorderSide(width: 1.0)),
        onPressed: (){}, child: Text ("login"),),
            SizedBox(height: 20,),SizedBox(width: 80,
              height: 20),Padding(
                padding: const EdgeInsets.only(left: 500,right: 500) ,
                child: TextButton(onPressed: (){}, child: Text("forgot password")),
              ),
            SizedBox(height: 20,),


            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Registrationpage()));
            }, child: Text("Create new account"))

          ]
          ),
        )
    );
  }


}
