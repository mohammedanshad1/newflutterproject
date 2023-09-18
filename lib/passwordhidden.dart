import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: loginpage(),
  ));
}

class loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => loginstate();
}

class loginstate extends State<loginpage> {
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("loginpage"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "Login Page",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(right: 400, left: 400),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "username",
                      hintText: "username",
                      prefixIcon: Icon(Icons.login),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(right: 400, left: 400),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      labelText: "password",
                      hintText: "password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed: () { setState(() {
                        if(showpass){
                          showpass=false;
                        }
                        else{
                          showpass=true;
                        }
                      }); }, icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(height: 50),
              TextButton(onPressed: (){}, child:Text("Forget Password")),
              SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold),

                  ),
                ),
              ),
              SizedBox(height: 30),
              TextButton(onPressed: (){}, child:Text("SignUp")),
              SizedBox(height: 20,),
              TextButton(onPressed: (){}, child: Text("Not a User?  Create a Account")),
            ],
          ),

        ),
      ),
    );
  }
}