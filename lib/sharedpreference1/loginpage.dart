/*import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/sharedpreference1/registrationpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homepage.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: loginpagepreference(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class loginpagepreference extends StatefulWidget {
  @override
  State<loginpagepreference> createState() => _loginpagepreferenceState();
}

class _loginpagepreferenceState extends State<loginpagepreference> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  late bool newuser;
  late String unames;

  late String password;

  @override
  void initState() {
    check_if_already_login();
    getvalue();
    super.initState();
  }

  void getvalue() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      unames = logindata.getString("username")!;

      password = logindata.getString("password")!;
    });
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = logindata.getBool('newuser') ?? true;

    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => homepage7()));
    }
  }

  @override
  void dispose() {
    username_controller.dispose();
    password_controller.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            "Login Here",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.purple),
          )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: username_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Username"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: TextField(
              controller: password_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "password"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              onPressed: () {
                String username = username_controller.text;
                String passwd = password_controller.text;

                if (username != "" &&
                    passwd != "" &&

                    username == unames &&
                    passwd == password
                    ) {
                  print("successfful");
                  print(username);
                  print(passwd);
                  print(unames);
                  print(password);

                  logindata.setBool("newuser", false);

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homepage7()));
                }
              },
              child: Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => registration(),
                    ));
              },
              child: Text(
                "Not an user?? Register here",
                style: TextStyle(color: Colors.purple),
              ))
        ],
      ),
    );
  }
}
*/
