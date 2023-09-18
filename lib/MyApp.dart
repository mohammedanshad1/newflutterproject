import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import  'package:newflutterproject/main.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My app")),
      body: Center(
        child: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.redAccent,Colors.green,Colors.yellow],
          begin: Alignment.topRight,end: Alignment.topLeft)),
        // decoration: BoxDecoration(
              //image: DecorationImage(
          //  image: NetworkImage(
              //  "https://images.unsplash.com/photo-1682687982502-1529b3b33f85?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
          //  fit: BoxFit.cover,
        //  )),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 500, right: 95),
                child: Center(
                  child: Text("Fc barcelona",style: GoogleFonts.allura(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ))
                ),
              ),
              Row(
                children: [

                    Center(
                      child:Padding(
                        padding: const EdgeInsets.only(bottom: 2000,right: 300),
                        child: Image(image: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple-music.512.png"),height: 100,width: 100,),
                      )
                    ),

                //  Padding(
                 //   padding: const EdgeInsets.only(left: 500, top: 60),
                 /*   child: Image(
                        image: AssetImage(
                            "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),
                        height: 200,
                        width: 300),
                 // ),*/
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}
