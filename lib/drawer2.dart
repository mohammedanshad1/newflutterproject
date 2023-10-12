import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(home: drawer2(),));
}
class drawer2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("email"),),

   /* drawer: Drawer(child: Container(
      decoration: BoxDecoration(color: Colors.white),
      child:ListView(

        children: [
          UserAccountsDrawerHeader(accountName: Text("Anshad",style: TextStyle(color: Colors.white),), accountEmail: Text("anshad@gmail.com",style:
            TextStyle(color: Colors.white),),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),
          ),otherAccountsPictures: [
      CircleAvatar(backgroundImage: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),)
            ],),
          ListTile(leading: Icon(Icons.home),
          title: Text("Home"),),

          ListTile(leading: Icon(Icons.inbox),
            title: Text("All Mails"),),


          ListTile(leading: Icon(Icons.settings),
            title: Text("Settings"),),

          ListTile(leading: Icon(Icons.archive),
            title: Text("Archieve"),),


          ListTile(leading: Icon(Icons.delete),
            title: Text("delete"),),

          ListTile(leading: Icon(Icons.spa),
            title: Text("Spam"),),
          Divider(color: Colors.grey,),

          ListTile(
            title: Text("     Google apps"),),
          ListTile(leading: Icon(Icons.calendar_month),
            title: Text("Calender"),),

          ListTile(leading: Icon(Icons.contact_mail),
            title: Text("Contacts"),),

          Divider(color: Colors.grey,)
        ],
      )
    ),),*/
    drawer: Drawer(
      child: Container(decoration: BoxDecoration(color: Colors.white),

      child: ListView(

        children: [
          UserAccountsDrawerHeader(accountName: Text("anshad"), accountEmail: Text("anshad@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/icons/photo_2023-08-02_17-49-52.jpg"),),
             decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/icons/nigel-hoare-WTYHayV4-j0-unsplash.jpg"),fit: BoxFit.fill)),
          ),
          ListTile(leading: Icon(Icons.home),
          title: Text("Home"),),

          ListTile(
            leading: Icon(Icons.send),
            title: Text(
              "Outbox",
              style: TextStyle(color: Colors.black),
            ),
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
          Divider(color: Colors.grey,),
          ListTile(title: Text("   Google apps"),),

          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text(
              "Contacts",
              style: TextStyle(color: Colors.black),
            ),
          ),

          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text(
              "Calender",
              style: TextStyle(color: Colors.black),
            ),
          ),




        ],
      ),),
    ),
  );
  }


}