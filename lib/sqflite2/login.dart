import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/sqflite2/database.dart';

import '../sqflite1/adminhome.dart';

void main(){

  runApp(MaterialApp(home:lg()));
}
class lg extends StatefulWidget{
  @override
  State<lg> createState() => _lgState();
}

class _lgState extends State<lg> {

  final username1=TextEditingController();
  final password1=TextEditingController();


  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass=true;
  void checkLogin1(String username,String password)async{


    await sqlHelper.checkLogin1(username,password);
  }
  @override

  Widget build(BuildContext context) {

   return Scaffold(


     appBar: AppBar(title: Text("Registration"),),


     body:  SingleChildScrollView(
         child:Form(
           key:formkey,

           child: Column(children: [
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
               child: TextFormField(controller: username1,
                   decoration: (InputDecoration(
                       hintText: "username",
                       labelText: "username",
                       prefixIcon: Icon(Icons.person),
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(15)))),
                   validator: (uname){
                     if(uname!.isEmpty || uname.contains("#")|| uname.contains("/")){
                       return "Enter valid username";
                     }
                     else{
                       return null;
                     }
                   }
               ),
             ),
             SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 100, right: 100),
               child: TextFormField(controller: password1,
                   obscuringCharacter: "*",obscureText: showpass,
                   decoration: InputDecoration(
                       hintText: "password",
                       labelText: "password",
                       prefixIcon: Icon(Icons.password),suffixIcon: IconButton(onPressed:(){setState(() {

                     if(showpass){
                       showpass=false;
                     }
                     else{
                       showpass=true;
                     }
                   }

                   );},
                     icon: Icon(showpass==true ? Icons.visibility_off:Icons.visibility),),
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(15))),
                   validator: (password) {
                     if (password!.isEmpty || password!.length<6)
                     {

                       return ("enter valid password");
                     }
                     else {
                       return null;
                     }
                   }
               ),),

             SizedBox(
               height: 20,
             ),
             Center(
               child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.red, side: BorderSide(width: 1.0)),
                 onPressed: () async {
                   final valid=formkey.currentState!.validate();
                   if(valid){
                     String uname=username1.text;
                     String pwd=password1.text;

    var data=await sqlHelper. userFound1(uname,pwd);
    if(data.isNotEmpty){

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>adminhome()));

    }



    }

                   },

                 child: Text("Login"),
               ),
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
                     style: TextStyle(color: Colors.blue, fontSize: 15),
                   )),
             )
           ]),
         ) ),
   );
  }
}