import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/sqflite1/registrationpage.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
        home: splash(),
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
      ));
}

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
              child: Text(
            "Hello There!",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
          )),
          SizedBox(
            height: 20,
          ),
          ListTile(
            subtitle: Text(
              " Automatic identify verifivation which enable you to verify your identify",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Image(
              image: AssetImage(
                  "assets/icons/man-cartoon-with-laptop-at-desk-working-design-free-vector.jpg")),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => logn(),
                  ));
            },
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.deepPurpleAccent),
              child: ListTile(
                title: Center(
                    child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.red),
            child: GestureDetector(onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>reg(), ));},
              child: ListTile(
                title: Center(
                    child: Text(
                  "Register",
                  style: TextStyle(color: Colors.black),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
