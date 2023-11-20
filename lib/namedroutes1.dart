import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/login%20with%20validate.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
 => MaterialApp(home:namedroutes1(),routes: {
   "Loginpage":(context)=> Login_with_validate(),

 },


   useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,))
  );}
class namedroutes1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Namedroutes"),),

      body: Center(
        child: Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed("Loginpage");
            }, child: Text("To LoginPage"))
          ],
        ),),
      ),
    );
  }


}