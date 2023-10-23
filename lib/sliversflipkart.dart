import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){


  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: sliversflip(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class sliversflip extends StatelessWidget{
  var txt=["ui/ux Designer",
  "ui/ux Designer",
  "ui/ux Designer",
    "ui/ux Designer",
    "ui/ux Designer",
    "ui/ux Designer",
    "ui/ux Designer",
    "ui/ux Designer",
    "ui/ux Designer",
    "ui/ux Designer",

  ];

  var sub=["Prateek Sing",
  "Prateek Sing",
  
  "Prateek Sing",
    "Prateek Sing","Prateek Sing",
    "Prateek Sing",
    "Prateek Sing",
    "Prateek Sing",
    "Prateek Sing",
    "Prateek Sing",];


  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          title: Text("Profile",style: TextStyle(color: Colors.black87),
        ),leading: Icon(Icons.menu,color: Colors.black87,),
        bottom: AppBar(backgroundColor: Colors.blue,
          elevation: 0,flexibleSpace: Center(child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Icon(Icons.facebook,size: 30,),
        )),
          title: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: (
              Column(
                children: [

                  Text("Facebook",style: TextStyle(color: Colors.black,fontSize: 20),),
                  Text("Facebook.com",style: TextStyle(color: Colors.black87,fontSize: 15),)
                ],
              )
              ),
            ),
          ),
        ),


        ),
        ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index){

          return
              Container(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(txt[index],style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                      subtitle: Text(sub[index],style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 15),),
                   trailing: Icon(Icons.archive,color: Colors.orange,), ),Container(child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.calendar_month),
                        ),Text( "25-oct-201"),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Icon(Icons.timelapse),
                      ),Text("2 weeks left"),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Icon(Icons.location_city),
                          ),Text("Banglore"),
                     

                      ],

                    ),


                ),


                    Divider(
                      color: Colors.black,
                    )]
              ),

          );

        },
        childCount: txt.length))
      ],)
    );

  }


}