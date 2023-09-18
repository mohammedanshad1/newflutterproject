import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutterproject/loginpagedemo.dart';
import 'package:newflutterproject/main.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context)
    => MaterialApp(useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
@override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My App",),
      ),
      body: Center(
        child: Container(
         decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellow,Colors.red,Colors.green],begin: Alignment.topLeft,
             end: Alignment.bottomLeft)),
          child: Row(
            children: [
          Padding(
          padding: const EdgeInsets.only(right :300,top:60),


                child: Image(
                  image: AssetImage(
                      "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
                  height: 200,
                  width: 200,
      ),
              ),
             Padding(
               padding: const EdgeInsets.only(left:300,top:60),
               child: Row(
                 children: [
                   Image(image: AssetImage("assets/icons/483251 (1).jpg"),height: 200,width: 200,),
                 ],
               ),
             ),

                 Center(child: //Text("fc barcelona",style: TextStyle(fontSize: 50,color: Colors.black),)),
              Padding(
                padding: const EdgeInsets.only(top: 500),
                child: Center(
                  child: Text( "FC Barcelona",

                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),),



            ],
          ),
        ),
      ),
    );
  }
}
