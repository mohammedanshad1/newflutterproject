import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutterproject/passingdatabtwntwoscreen/dummydata.dart';

class ProductList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final id =ModalRoute.of(context)?.settings.arguments;
    final product=dummyProducts.firstWhere((product) => product["id"]==id);
   return Scaffold(

     appBar: AppBar(title: Text("products"),),

     body: ListView(
       children: [
         SizedBox(height: 100,
         width: 100,
         child: Center(
           child: Row(
             children: [
               Image(image: NetworkImage(product["image"]),),
              
             ],
           ),
         ),),
         Text("${product["name"]}",
         style: TextStyle(fontSize: 30),),
         Text("${product["description"]}")


       ],
     ),
   );
  }


}