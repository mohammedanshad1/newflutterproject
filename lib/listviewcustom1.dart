import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){


  runApp(DevicePreview(
    builder: (BuildContext context)
     =>MaterialApp(useInheritedMediaQuery:true,debugShowCheckedModeBanner:false,home: Listview(),
    ),
  ));
}

class Listview extends StatelessWidget{

  var name=["anshad","thaslim","jubair"];
  var phone=["83993","994300","499440"];
  var image=["assets/icons/Simpleicons-Team-Simple-Apple-music.512.png",
    "assets/icons/Simpleicons-Team-Simple-Apple-music.512.png",
    "assets/icons/Simpleicons-Team-Simple-Apple-music.512.png"
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar: AppBar(title: Text("List View Custom"),),
    body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
        (context,index){
      
     return ListTile(title: Text(name[index]),
      subtitle: Text(phone[index]),
      leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),);
    }
    ,childCount: name.length,)
    /*[

      Card(color: Colors.red,shadowColor: Colors.black,
        child: ListTile(title: Text("Anshad"),
        subtitle: Text("kunnummal house"
            "Thiruvegappura"),
        leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png"),),
        trailing: Icon(Icons.call),
        ),
      ),
      ListTile(title: Text("Anshad"),
        subtitle: Text("kunnummal house"
            "Thiruvegappura"),
        leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png"),),
        trailing: Icon(Icons.call),
      ),
      ListTile(title: Text("Anshad"),
        subtitle: Text("kunnummal house"
            "Thiruvegappura"),
        leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png"),),
        trailing: Icon(Icons.call),
      ),
      ListTile(title: Text("Anshad"),
        subtitle: Text("kunnummal house"
            "Thiruvegappura"),
        leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png"),),
        trailing: Icon(Icons.call),
      ),
      ListTile(title: Text("Anshad"),
        subtitle: Text("kunnummal house"
            "Thiruvegappura"),
        leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Simpleicons-Team-Simple-Apple.512.png"),),
        trailing: Icon(Icons.call),
      ),
    ]*/
    )
   );
  }



}