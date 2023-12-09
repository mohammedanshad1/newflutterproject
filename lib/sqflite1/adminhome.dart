import 'package:flutter/material.dart';
import 'package:newflutterproject/sqflite1/sqlhelper.dart';


class adminhome extends StatefulWidget {
  @override
  State<adminhome> createState() => _adminhomeState();
}

class _adminhomeState extends State<adminhome> {
  var data;
  void delete(int id) async{


    await  SQLHelper.Deleteuser(id);
    Refresh();
  }
  @override
  void initState() {
    Refresh();
    super.initState();
  }
  void Refresh() async{

    var mydata=await  SQLHelper.getAll();
    setState(() {
      data=mydata;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin home Page"),
      ),
     body: ListView.builder(itemBuilder: (context,index){

       return Card(color: Colors.red,
         child: ListTile(
           title: Text("${data[index]["name"]}"),
           trailing: IconButton(onPressed: (){


           }, icon: Icon(Icons.delete),),
         ),
       );
     }),
    );
  }
}
