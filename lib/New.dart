/*import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/Homepage.dart';
import 'package:newflutterproject/MyApp.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Newpage(),
    ),

  ));
 /* runApp(MaterialApp(home: Newpage(),
  ));*/
}

class Newpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NewState();
}

class NewState extends State<Newpage> {
  bool showpass = true;
  @override
  GlobalKey<FormState> formkey = GlobalKey();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("login page"),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
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
                      decoration: InputDecoration(
                          hintText: "email",
                          labelText: "email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                      validator: (email) {
                        if (email!.isEmpty ||
                            email!.contains("@") ||
                            email!.contains("&")) {
                          return "enter valid email";
                        } else {
                          return null;
                        }
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: TextFormField(obscureText: showpass,obscuringCharacter: "*",
                      decoration: InputDecoration(
                          hintText: "password",
                          labelText: "password",
                          prefixIcon: Icon(Icons.password),suffixIcon: IconButton(onPressed: (){
                            setState(() {
                                         if(showpass){
                                                  showpass=false;
                                                       }
                                         else{
                                           showpass=true;
                                         }
                            });},icon: Icon(showpass==true? Icons.visibility_off:Icons.visibility),
                      ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                      validator: (password) {
                        if (password!.isEmpty ||
                            password!.contains("@") ||
                            password!.contains("&")) {
                          return "enter valid password";
                        } else {
                          return null;
                        }
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, right: 100),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          side: BorderSide(width: 1.0)),
                      onPressed: () {
                        final valid=formkey.currentState!.validate();
                       if(valid){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                       }
                      },
                      child: Text("Login")),
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
                          style: TextStyle(fontSize: 15),
                        )))
              ],
            ),
          ),

/*
     body:
     Container(decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1694161097603-2858ec0107fe?ixlib=rb-4.0."
         "3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1899&q=80"),fit: BoxFit.cover)),
         child: Column(children: [

       SizedBox(height: 20,),
       Center(child:
       Text("Login page",style: TextStyle(color: Colors.black,fontSize: 20),)),


       SizedBox(height: 20,),
       Padding(
         padding: const EdgeInsets.only(left: 100,right: 100),
         child: TextField(decoration: InputDecoration(hintText: "email",labelText: "email",prefixIcon: Icon(Icons.email),
             border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
         ),
       ),
SizedBox(height: 20,),

       Padding(
         padding: const EdgeInsets.only(left: 100,right: 100),
         child: TextField(obscuringCharacter: "*",obscureText: showpass,decoration: InputDecoration(hintText: "oassword",labelText: "password",
             prefixIcon: Icon(Icons.email),suffixIcon: IconButton(onPressed: (){setState(() {
               if(showpass){
                 showpass=false;
               }
               else{
                 showpass=true;
               }
             });},  icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),



             border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
       ),SizedBox(height: 20,),
      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red,side: BorderSide(width: 1.6)),onPressed: (){},
          child: Text("Login")),
       TextButton(onPressed: (){

       }, child: Text("create new account"))

         ]
    )
    )*/
        ));

    /* Row(
         children: [
           Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png")),Padding(
             padding: const EdgeInsets.only(left: 200,top: 200),
             child: Row(children: [
               Padding(
                 padding: const EdgeInsets.only(right: 200,bottom: 200),
                 child: Image(image: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png")),
               ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 300),
                 child: Text("FC BARCELONA",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,color: Colors.red),),
               ),
             ],),
           )
         ],






       ),*/
  }
}
*//*
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(
    builder: (BuildContext context)
    => MaterialApp(debugShowCheckedModeBanner:false,useInheritedMediaQuery:true,home: Contacts(),
    ),
  ));
}

class Contacts extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>ContactsState();


}
class ContactsState extends State<Contacts>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Contacts"),),

    body: ListView(children: [

      ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),),
      title: Text("anshad"),
      subtitle: Text("9744043830"),
        trailing: Icon(Icons.call),

      ),
      ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),),
        title: Text("ashiq"),
        subtitle: Text("9744043830"),
        trailing: Icon(Icons.call),

      ),
      ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),),
        title: Text("salahu"),
        subtitle: Text("9744043830"),
        trailing: Icon(Icons.call),

      ),
      ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),),
        title: Text("kannan"),
        subtitle: Text("9744043830"),
        trailing: Icon(Icons.call),

      ),
      ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),),
        title: Text("aslam"),
        subtitle: Text("9744043830"),
        trailing: Icon(Icons.call),

      ),
      ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png"),),
        title: Text("muzammil"),
        subtitle: Text("9744043830"),
        trailing: Icon(Icons.call),

      )
    ],),
  );
  }
}


*//*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  
  runApp(MaterialApp(home: Listbuilder(),
  ));
}
class Listbuilder extends StatelessWidget{
  var name=["anshad","akshay","siraj"];
  var phone=["9744043830","5696006","69605050"];
  var image=["assets/icons/483251 (1).jpg",
  "assets/icons/Giannis-Zographos-Spanish-Football-Club-FC-Barcelona.256.png",
  "assets.icons/Simpleicons-Team-Simple-Apple.512.png"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text("List builder"),),

      body: ListView.builder(
        itemBuilder: (context,index){
          return (
              ListTile(
            title: Text(name[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
          )
          );

        }
      ),
    );
  }




}
*/

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  
  runApp(DevicePreview(
    builder: (BuildContext context)
    => MaterialApp(debugShowCheckedModeBanner: false,useInheritedMediaQuery: true,home: List_builder(),
    ),
  ));
}
class List_builder extends StatelessWidget{
  @override

  var step=["step1","step2","step3","step 4","step 5","step6"];
  var stepdue=["step1 due 1 day","step 2 due in 2 day","step 3 due in 3 day","step 4 due in 4 day","step 5 due in 5 day",
    "step 6 due in 6 day"];
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(backgroundColor: Colors.orange,
         title: Text("list separate"),),

       body: ListView.separated(
         itemBuilder: (context,index){

         return Card(
           child:
           ListTile(title: Text(step[index]),
             subtitle: Text(stepdue[index]),

             trailing: Icon(Icons.check_box_outline_blank),


           ),
         );
    },itemCount: stepdue.length,
         separatorBuilder: (BuildContext context, int index){
           return Card(
             child: ListTile( leading: Icon(Icons.description),
               title: Text("this is the ver short description of the step"),
               subtitle: Text("Description"),

             ),
           );
         }

         )

     );


  }



}