import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'lgn.dart';



class hme extends StatefulWidget{
  @override
  State<hme> createState() => _hmeState();
}

class _hmeState extends State<hme> {
  late SharedPreferences users;
  late String username;

  @override
  void initState() {
    getusername();
    super.initState();
  }
  void getusername() async{

    users=await SharedPreferences.getInstance();
    setState(() {
      username=users.getString("username2")!;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Home"),),


      body: Column(
        children: [
          Text("Welcome $username "),

          ElevatedButton(onPressed: (){
            users.setBool("newusers", true);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>lgpage(),));
          }, child: Text("Logout"))
        ],
      ),


    );
  }
}