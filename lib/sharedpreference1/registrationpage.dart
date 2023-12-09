/*import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/sharedpreference1/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginpage.dart';


class registration extends StatefulWidget {
  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {

  final username_controller = TextEditingController();

  final password_controller = TextEditingController();
  late SharedPreferences logindata;

  @override
  void dispose() {
    username_controller.dispose();

    password_controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        title: Text("Registration page"), backgroundColor: Colors.purple,),

    body: Column(children: [


    SizedBox(height: 20,),
    Center(child: Text("Register Here", style: TextStyle(
    fontWeight: FontWeight.bold, fontSize: 25, color: Colors.purple),)),
    SizedBox(height: 20,),
    Padding(
    padding: const EdgeInsets.all(5),
    child: TextField(controller: username_controller,
    decoration: InputDecoration(
    border: OutlineInputBorder(), labelText: "username"),),
    ),

    SizedBox(height: 20,),
    Padding(
    padding: const EdgeInsets.all(5),
    child: TextField(decoration: InputDecoration(
    border: OutlineInputBorder(), labelText: "password"),),
    ),
    SizedBox(height: 20,),
    Padding(
    padding: const EdgeInsets.all(5),
    child: TextField(controller: password_controller,
    decoration: InputDecoration(
    border: OutlineInputBorder(), labelText: "Confirm Password"),),
    ), SizedBox(height: 20,),
    ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
    onPressed: () async {
      logindata = await SharedPreferences.getInstance();

    String unames = username_controller.text;

    String passw = password_controller.text;


    if (unames != "" && passw != "") {
    logindata.setString("username", unames);

    logindata.setString("password", passw);
    print(unames);
    print(passw);
    

    Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context) => loginpagepreference(),));
    
    }}, child: Text("Register"),)
    ],),
    );
    }

    
  }

 */
