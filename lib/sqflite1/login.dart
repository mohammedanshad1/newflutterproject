import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/sqflite1/adminhome.dart';
import 'package:newflutterproject/sqflite1/registrationpage.dart';
import 'package:newflutterproject/sqflite1/splashscreen.dart';
import 'package:newflutterproject/sqflite1/sqlhelper.dart';
import 'package:newflutterproject/sqflite1/userhome.dart';



class logn extends StatefulWidget {
  @override
  State<logn> createState() => _lognState();
}

class _lognState extends State<logn> {
  GlobalKey<FormState> formkey = GlobalKey();
  final TextEditingController conusername = TextEditingController();
  final TextEditingController conpass = TextEditingController();
  bool showpass = true;

  @override
  void logincheck(String email, String password) async {
    if (email == 'admin@gmail.com' && password == '123456') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => adminhome()));
    }
    else {
      var data = await SQLHelper.CheckLogin(email, password);
      if (data.isNotEmpty) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>userhome(data:data)));
        print('Login Success');
      } else if (data.isEmpty) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => splash()));
        print('Login failed');
      }
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Admin Login"),
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              ListTile(
                subtitle: Center(
                    child: Text(
                  "Welcome back!Login with your credentials",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: conusername,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (uname) {
                      if (uname!.isEmpty ||
                          uname.contains("#") ||
                          uname.contains("/")) {
                        return "Enter valid username";
                      } else {
                        return null;
                      }
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: conpass,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "password",
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            } else {
                              showpass = true;
                            }
                          });
                        },
                        icon: Icon(showpass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    obscuringCharacter: "*",
                    obscureText: showpass,
                    validator: (pwd) {
                      if (pwd!.isEmpty ||
                          pwd.contains("#") ||
                          pwd.contains("/")) {
                        return "Enter valid password";
                      } else {
                        return null;
                      }
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 75, vertical: 20),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {

                      logincheck(conusername.text, conpass.text);
                    }else{}
                  },
                  child: Text("Login")),
              SizedBox(
                height: 20,
              ),
              // TextButton(
              //     onPressed: () {
              //       Navigator.pushReplacement(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => reg(),
              //           ));
              //     },
              //     child: Text(
              //       "Do not have an account? Register",
              //       style: TextStyle(color: Colors.black),
              //     ))
            ],
          ),
        ),
      ),
    );
  }
}
