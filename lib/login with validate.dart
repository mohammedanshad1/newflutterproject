import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Login_with_validate(),
    ),
  ));
}

class Login_with_validate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Login_with_validate_State();
}

class Login_with_validate_State extends State<Login_with_validate> {
  bool showpass=true;

  @override
  GlobalKey<FormState>formKey=GlobalKey();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
        ),
        body: SingleChildScrollView(
            child:Form(
          key:formKey,

          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: Image(
                  image: AssetImage(
                      "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png")),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                decoration: (InputDecoration(
                    hintText: "username",
                    labelText: "username",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)))),
                  validator: (uname){
                  if(uname!.isEmpty || uname.contains("@")|| uname.contains(".")){
                  return "Enter valid username";
              }
              else{
                return null;
              }
  }
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "password",
                    labelText: "password",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),),),

            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, side: BorderSide(width: 1.0)),
                onPressed: () {},
                child: Text("Login"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create new account",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  )),
            )
          ]),
        ) ));

  }
}
