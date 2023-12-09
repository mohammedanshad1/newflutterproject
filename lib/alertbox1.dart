import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context) 
  => MaterialApp(home: alertbox1(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class alertbox1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alertbox",style:TextStyle(color: Colors.black),),backgroundColor: Colors.blue,),
      body:Center(child: ElevatedButton(onPressed: () {

        showDialog(context: context, builder:( context){
          return
              AlertDialog(content: Text("Exit"),
              title: Text("Do you want to Exit?"),
              actions: [

                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("Yes")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("No")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("Cancel"))
              ],);

        });
      }, child: Text("Alert box"),))

    );
  }



}