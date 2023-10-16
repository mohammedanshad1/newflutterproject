import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview
    (builder: (BuildContext context)
    => MaterialApp(home: Drawer4(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class Drawer4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(title: Text("Email",style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,),

    drawer: Drawer(child: Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(children: [
        UserAccountsDrawerHeader(accountName: Text("Anshad k"), accountEmail: Text("anshadk556@gmail.com"),currentAccountPicture:
          CircleAvatar(backgroundImage: AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/icons/lucas-hoang-y-Xkx6d1QPM-unsplash.jpg"),
            fit: BoxFit.fill)),
        ),ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),

        ListTile(
          leading: Icon(Icons.inbox),
          title: Text("Inbox"),
        ),

        ListTile(
          leading: Icon(Icons.send),
          title: Text("send messages"),
        ),

        ListTile(
          leading: Icon(Icons.recent_actors),
          title: Text("recent"),
        ),

        Divider(color: Colors.grey,),

        ListTile(
          leading: Icon(Icons.delete),
          title: Text("deleted messages"),
        )

      ],
      ),
    ),),
  );
  }


}