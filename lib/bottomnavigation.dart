import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/login%20with%20validate.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      home: bottomnavigation(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
    ),
  ));
}
class bottomnavigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> bottomState();


}
class bottomState extends State<bottomnavigation>{

  var screen=[Text("Home"),
  Text("Search"),
  Text("People"),
  Text("Favorites"),
Text("Login")
  ];
int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation"),),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        onTap: (tapindex){
          setState(() {
            index=tapindex;
          });
        },
        selectedItemColor: Colors.green,unselectedItemColor: Colors.yellow,
        items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon:Icon( Icons.search),label: "Search"),
        BottomNavigationBarItem(icon:Icon( Icons.people),label: "People"),
        BottomNavigationBarItem(icon:Icon( Icons.favorite),label: "Favorites"),
       BottomNavigationBarItem(icon:IconButton(
          onPressed: () { Navigator.push(context,MaterialPageRoute(builder:(context)=> Login_with_validate())); },
           icon: Icon(Icons.login),),label: "Login"),

      ],),
      body: Center(child: screen[index]),
    );
  }


}