import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(DevicePreview(builder: (BuildContext context)
  => MaterialApp(home: navigator(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,)));
}
class navigator extends StatefulWidget{
  @override
  State<navigator> createState() => _navigatorState();
}

class _navigatorState extends State<navigator> {
  var screen=[Text("home"),
    TabBarView(children: [lunches1()]),
  Text("cart"),
 Text( "account")];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("Navigator"),
        bottom: TabBar(tabs: [
          Tab(child: Text("Lunches"),),
          Tab(child: Text("Cart"),)
        ],),),

        bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.green,unselectedItemColor: Colors.black,
          backgroundColor: Colors.red,type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (tapindex){
          setState(() {

            index=tapindex;
          });
          },
          items: [

          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.lunch_dining),label: "lunches"),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: "cart"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),label: "account"),

        ],
        ),body: Center(child: screen[index]),
      ),
    );
  }
}
class lunches1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
         body: ListView(
           children: [
              Container(child: Column(
                 children: [

                       Text("Anshad"),
                   Text("Flutter")
                 ],
               ),),


             Divider(color: Colors.grey,),


             Container(child: Column(
               children: [

                 Text("Anshad"),
                 Text("Flutter")
               ],
             )),

             Divider(color: Colors.grey,),


             Container(child: Column(
               children: [
                 Text("Anshad"),
                 Text("Flutter")
               ],
             ),),

             Divider(color: Colors.grey,),




             Container(child: Column(
               children: [
                 Text("Anshad"),
                 Text("Flutter")
               ],
             ),),

             Divider(color: Colors.grey,),



             Container(child: Column(
               children: [
                 Text("Anshad"),
                 Text("Flutter")
               ],
             ),),

             Divider(color: Colors.grey,)
           ],

         ),
   );
  }


}