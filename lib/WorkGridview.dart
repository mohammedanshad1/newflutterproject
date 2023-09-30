import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/listviewcostum.dart';

void main(){


  runApp(DevicePreview(

    builder: (BuildContext context)
    =>MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
      home: Listview1(),
    ),
  ));
}
class Listview1 extends StatefulWidget {

  var name=["anshad","thaslim","jubair","akshay"];

  var phone=["3444","45555","55666","5555"];

  var image=["assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",];
  @override
  State<StatefulWidget> createState()=> ListState();


}
class ListState extends State<Listview1>{
  var name=["anshad","thaslim","jubair","akshay"];

  var phone=["3444","45555","55666","5555"];

  var image=["assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",
    "assets/icons/483251 (1).jpg",];
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar: AppBar(title: Text("Grid View"),),

    body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 20,
    ),
    children: [



     Card(color: Colors.green,
                   child: Column(
                     children: [

                          Padding(
                            padding: const EdgeInsets.only(right: 20,top: 20),
                            child: ListTile(
                             trailing: Icon(Icons.home,size: 50,color: Colors.black,),
                         ),
                          ),
                       Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: Text("Home",style: TextStyle(fontSize: 25,color: Colors.black),),
                       )

                     ],
                   ),
                 ),





      Card(color: Colors.grey,
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(right: 20,top: 20),
                child: ListTile(
                  trailing: Icon(Icons.email,size: 50,color: Colors.black,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),

                  child: Text("Email",style: TextStyle(fontSize: 25,color: Colors.black),),
                ),


            ],
          ),
        ),



      Card(color: Colors.brown,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: ListTile(
                trailing: Icon(Icons.alarm,size: 50,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Alarm",style: TextStyle(fontSize: 25,color: Colors.black),),
            )

          ],
        ),
      ),



      Card(color: Colors.pink,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: ListTile(
                trailing: Icon(Icons.account_balance_wallet,size: 50,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Wallet",style: TextStyle(fontSize: 25,color: Colors.black),),
            )

          ],
        ),
      ),

      Card(color: Colors.blueGrey,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: ListTile(
                trailing: Icon(Icons.backup,size: 50,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Backup",style: TextStyle(fontSize: 25,color: Colors.black),),
            )

          ],
        ),
      ),

      Card(color: Colors.teal,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: ListTile(
                trailing: Icon(Icons.book,size: 50,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Book",style: TextStyle(fontSize: 25,color: Colors.black),),
            )

          ],
        ),
      ),

      Card(color: Colors.purple,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: ListTile(
                trailing: Icon(Icons.camera_alt,size: 50,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Camera",style: TextStyle(fontSize: 25,color: Colors.black),),
            )

          ],
        ),
      ),

      Card(color: Colors.brown,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: ListTile(
                trailing: Icon(Icons.person,size: 50,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Person",style: TextStyle(fontSize: 25,color: Colors.black),),
            )

          ],
        ),
      ),

      Card(color: Colors.greenAccent,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: ListTile(
                trailing: Icon(Icons.print,size: 50,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Print",style: TextStyle(fontSize: 25,color: Colors.black),),
            )

          ],
        ),
      ),

      Card(color: Colors.pinkAccent,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: ListTile(
                trailing: Icon(Icons.call,size: 50,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Phone",style: TextStyle(fontSize: 25,color: Colors.black),),
            )

          ],
        ),
      ),

      Card(color: Colors.black38,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: ListTile(
                trailing: Icon(Icons.speaker_notes,size: 50,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Notes",style: TextStyle(fontSize: 25,color: Colors.black),),
            )

          ],
        ),
      ),

      Card(color: Colors.white38,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20,top: 20),
              child: ListTile(
                trailing: Icon(Icons.music_note,size: 50,color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Music",style: TextStyle(fontSize: 25,color: Colors.black),),
            )

          ],
        ),
      )











    ],
    )
   );


  }


}