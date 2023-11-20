
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){


  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home:login(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class login extends StatefulWidget{
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(title: Text("Shared Preference"),),

    body: Container(child: Column(children: [


      Text("Login",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30),),

      SizedBox(height: 100,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TextField(decoration: InputDecoration(hintText: "Username",prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(200))),),
        ),
      ),
      SizedBox(height: 100,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TextField(decoration: InputDecoration(hintText: "password",prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(200))),),
        ),
      ),
      SizedBox(height: 20,
          child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: (){}, child: Text("Login")),

      )

    ],),)
  );
  }
}