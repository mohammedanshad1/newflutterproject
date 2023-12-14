import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/sqflite1/splashscreen.dart';
import 'package:newflutterproject/sqflite1/sqlhelper.dart';

import 'login.dart';



class reg extends StatefulWidget {
  @override
  State<reg> createState() => _regState();
}

class _regState extends State<reg> {
  GlobalKey<FormState> formkey = GlobalKey();
  var conusername = TextEditingController();
  var conemail = TextEditingController();
  var cpass = TextEditingController();
  var copass = TextEditingController();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    void AddnewUser(String username, String email, String password) async {
      var id= await SQLHelper.AddNewUser(username, email, password);
      print(id);
      if (id != null) {
        print("$username,$email,$password");
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => logn(),
            ));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => splash()));
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Registration Page"),
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
                  height: 20,
                ),
                Text(
                  "Register here",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                ListTile(
                  subtitle: Center(
                      child: Text(
                    "Create an account its free",
                    style: TextStyle(color: Colors.black, fontSize: 15),
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
                          hintText: "Username",
                          prefixIcon: Icon(Icons.person)),
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
                    controller: conemail,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple)),
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                        hintText: "Email"),
                    validator: (email) {
                      if (email!.isEmpty ||
                          email.contains("#") ||
                          email.contains("/")) {
                        return "Enter valid email";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: cpass,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple)),
                      labelText: "Password",
                      hintText: "Password",
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
                    validator: (pwd) {
                      if (pwd!.isEmpty ||
                          pwd.contains("#") ||
                          pwd.contains("/")) {
                        return "Enter valid password";
                      } else {
                        return null;
                      }
                    },
                    obscureText: showpass,
                    obscuringCharacter: "*",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: copass,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                      hintText: "ConfirmPassword",
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
                    validator: (pwd) {
                      if (pwd!.isEmpty ||
                          pwd.contains("#") ||
                          pwd.contains("/")) {
                        return "Enter valid password";
                      } else {
                        return null;
                      }
                    },
                    obscureText: showpass,
                    obscuringCharacter: "*",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 75.0, vertical: 20.0),
                        backgroundColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    onPressed: () async {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        String uname = conusername.text;
                        String email = conemail.text;

                        var data = await SQLHelper.userFound(email, uname);

                        if (data.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("user already registered")));
                        } else {
                          AddnewUser(
                              conusername.text, conemail.text, cpass.text);
                        }


                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            action:
                            SnackBarAction(label: "UNDO", onPressed: () {}),
                            content: const Text("invalid username/password")));
                      }
                    },
                    child: Text("Register")),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Already Have an Account? Login ",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
        ));
  }
}
