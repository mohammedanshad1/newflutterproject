import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: bottomnavigation7(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class bottomnavigation7 extends StatefulWidget {

  @override
  State<bottomnavigation7> createState() => _bottomnavigation7State();
}

class _bottomnavigation7State extends State<bottomnavigation7> {

  var dislpay=[Text("Home"),
  Text("Settings"),
  Text("Account"),
  Text("Login")];
  int index=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Bottom Navigation Bar Example"),),

     bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.black,unselectedItemColor: Colors.red,
       type: BottomNavigationBarType.shifting,currentIndex: index,
    onTap: (tapindex){
      setState(() {
        index=tapindex;
      });},
       items: [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.green),
       BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings",backgroundColor: Colors.green),
       BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account",backgroundColor: Colors.green),
         BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login",backgroundColor: Colors.green),

     ],),
     body: Center(child: dislpay[index]),
   );
  }


  }


