import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  
  runApp( MaterialApp(home: datatable(),
    ));

}
class datatable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: AppBar(backgroundColor: Colors.white,),
    body: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.yellow),
      child: DataTable(columns: [
      DataColumn(label: Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
      DataColumn(label: Text("Age",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
      DataColumn(label: Text("Role",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
      DataColumn(label: Text("Salary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),))
    ],
    rows: [
      DataRow(cells: [
        DataCell(Text("Anshad")),
        DataCell(Text("21")),
        DataCell(Text("Developer")),
        DataCell(Text("50000"))
      ]),

    DataRow(cells: [
    DataCell(Text("Thaslim")),
    DataCell(Text("21")),
    DataCell(Text("Developer")),
    DataCell(Text("50000"))
    ]),
    DataRow(cells: [
    DataCell(Text("Siraj")),
    DataCell(Text("21")),
    DataCell(Text("Developer")),
    DataCell(Text("50000"))
    ]),
    DataRow(cells: [
    DataCell(Text("Najathu")),
    DataCell(Text("21")),
    DataCell(Text("Developer")),
    DataCell(Text("50000"))
    ]),
      DataRow(cells: [
        DataCell(Text("Akshay")),
        DataCell(Text("21")),
        DataCell(Text("Developer")),
        DataCell(Text("50000"))
      ]),
      DataRow(cells: [
        DataCell(Text("Rahal")),
        DataCell(Text("21")),
        DataCell(Text("Developer")),
        DataCell(Text("50000"))
      ]),
      DataRow(cells: [
        DataCell(Text("Amal")),
        DataCell(Text("21")),
        DataCell(Text("Developer")),
        DataCell(Text("50000"))
      ]),

    ],),),

  );
  }



}