/*import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginpage.dart';



class homepage7 extends StatefulWidget{
  @override
  State<homepage7> createState() => _homepage7State();
}

class _homepage7State extends State<homepage7> {


  late SharedPreferences logindata;
  late String unames;

  @override
  void initState() {
    initial();
    super.initState();
  }
  void initial() async{
    logindata=await SharedPreferences.getInstance();
    setState(() {
      unames=logindata.getString("username")!;

    });

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar:  AppBar(title: Text("SharedPreferences Example"),),
 body: Column(children: [


   Text("Hi $unames Welcome To Luminar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),


   ElevatedButton(onPressed: (){
     logindata.setBool("newuser",true);
     Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>
       loginpagepreference(),));
   }, child: Text("Log Out"))
 ],),
    );
  }
}
*/