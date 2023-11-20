import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'foodproductlist.dart';
import 'foodproductmain.dart';

void main() {
  runApp(MaterialApp(
      home: LoginPgeFoodProd(),
      routes: {
        'dummyP':(context) => FoodProductList(),
        'FoodMain': (context) => FoodProductMain(),
      }
  ));
}

class LoginPgeFoodProd extends StatefulWidget {
  @override
  State<LoginPgeFoodProd> createState() => _LoginPgeFoodProdState();
  bool showpass = true;
}

class _LoginPgeFoodProdState extends State<LoginPgeFoodProd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body:
      Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "UserName",
                  prefixIcon: Icon(Icons.person),
                  labelText: "UserName",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              validator: (uname) {
                if (uname!.isEmpty ||
                    uname!.contains("@") ||
                    uname.contains("."))
                  return "Enter valid Username";
                else {
                  return null;
                }
              },
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.password),
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              validator: (uname) {
                if (uname!.isEmpty ||
                    uname!.contains("@") ||
                    uname.contains("."))
                  return "Enter valid Password";
                else {
                  return null;
                }
              },
            ),
            SizedBox(height: 20,
              width: 100,
              child: ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('FoodMain');
              }, child: Text("LOGIN")),),

          ],

        ),
      ),
    );
  }
}