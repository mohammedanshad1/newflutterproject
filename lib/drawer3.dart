import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context) => MaterialApp(home: drawer3(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class drawer3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Email"),backgroundColor: Colors.red,),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text("anshad"), accountEmail: Text("anshadk556@gmail.com")
              ,currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/icons/warren-umoh-VL12rhr4mi0-unsplash.jpg"),),
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/icons/warren-umoh-K7M7dQO-HrA-unsplash (1).jpg"),
                  fit: BoxFit.fill)),
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text("inbox"),
              ),


              ListTile(
                leading: Icon(Icons.favorite),
                title: Text(
                  "Favorite",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              ListTile(
                leading: Icon(Icons.archive),
                title: Text(
                  "Archieve",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              ListTile(
                leading: Icon(Icons.delete),
                title: Text(
                  "Trash",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              ListTile(
                leading: Icon(Icons.spa),
                title: Text(
                  "Spam",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              Divider(
                color: Colors.grey,
              ),
              Text(
                "    Labels",
                style: TextStyle(color: Colors.black),
              ),

              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text(
                  "Family",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text(
                  "Friends",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Divider(color: Colors.grey,),


            ],
          ),
        ),
      ),
    );
  }


}