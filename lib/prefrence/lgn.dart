import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'hme.dart';

void main(){

  runApp(MaterialApp(home: lgpage(),));
}
class lgpage extends StatefulWidget{
  @override
  State<lgpage> createState() => _lgpageState();
}

class _lgpageState extends State<lgpage> {
  late SharedPreferences user;
   TextEditingController username1 =TextEditingController();
  TextEditingController password=TextEditingController();
  late bool newusers;

  @override
  void initState() {
    usercheck();
    super.initState();
  }

  void usercheck() async{


    user=await SharedPreferences.getInstance();
    newusers = user.getBool('newusers') ?? true;

    if(newusers == false){
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=> hme()));
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title: Text("Login Page"),),

      body: Column(children: [

        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(controller: username1,
            decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Username",),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(controller: password,
            decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Password"),),
        ),
        SizedBox(height: 20,),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue), onPressed: () {
              String unme = username1.text;
              String pwds = password.text;

              if (unme != "" && pwds != "") {
                print("Login Success");
                user.setString("username2", unme);

                user.setBool("newusers", false);
                print(unme);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => hme()));

              }

            },child: Text("Login"),)
        ),

      ],),
    );
  }
}



