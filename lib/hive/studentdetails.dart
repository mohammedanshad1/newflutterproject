
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("student_box");

  runApp(MaterialApp(
  home:studentdetails(),));
}
class studentdetails extends StatefulWidget{
  @override
  State<studentdetails> createState() => _studentdetailsState();
}

class _studentdetailsState extends State<studentdetails> {
  List<Map<String, dynamic>> reg = [];

  final sbox = Hive.box("student_box"); //object creation


@override
  void initState() {

    super.initState();
    loaddetails();
  }

  Future<void> createstudent(Map<String, dynamic>task1) async {
    await sbox.add(task1);
    loaddetails(); //call function
  }

  void loaddetails() async{



    final datas = sbox.keys.map((id) {
      final value = sbox.get(id);
      return {"keys": id, "name": value["name"], "age": value["age"]};
      // all items stored in data


    }).toList();
    setState(() {
      reg= datas.reversed.toList(); //data items  to task

    });
  }

  Future<void> updatetask1(int key, Map<String, dynamic>uptask) async {
    await sbox.put(key, uptask);
    loaddetails();
  }

  ///deleting hive data

  Future<void> deletetasks(int key) async {
    await sbox.delete(key);
    loaddetails();
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(title: Text("Student Details"),),

    body:  sbox.isEmpty ? const Center(
        child: Text("NO DATA", style: TextStyle(fontSize: 40),))
        : ListView.builder(
        itemCount: sbox.length,
        itemBuilder: (context, index) {
          return Card(color: Colors.pink,
            child: ListTile(
              title: Text("${reg[index]["name"]}"),
              subtitle: Text("${reg[index]["age"]}"),
              trailing: Wrap(


                children: [
                  IconButton(
                      onPressed: () {
                        showForm1(context,reg[index]["keys"]);
                      },
                      icon: const Icon(Icons.edit_calendar)),
                  IconButton(
                      onPressed: () {
                        deletetasks(reg[index]['keys']);
                      },
                      icon: const Icon(Icons.delete)),
                ],
              ),
            ),

          );
        }),
    floatingActionButton: FloatingActionButton(
      onPressed: () => showForm1(context,null),
      child: const Icon(Icons.add),
    ),
  );
  }

  final name_controller = TextEditingController();
  final age_controller = TextEditingController();

  void showForm1( BuildContext context,int? id) async {
    if (id != null) {
      final newstudent = reg.firstWhere((element) => ["keys"] == id);
      name_controller.text = newstudent["name"];
      age_controller.text = newstudent["age"];
    }

    showModalBottomSheet(
        context: context,
        elevation: 3,
        isScrollControlled: true,
        builder: (context) =>
            Container(
              padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: MediaQuery
                      .of(context)
                      .viewInsets
                      .bottom + 120),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: name_controller,
                    decoration: const InputDecoration(
                        hintText: "Name", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: age_controller,
                    decoration: const InputDecoration(
                        hintText: "Age", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        createstudent({
                          'name': name_controller.text,
                          'age': age_controller.text
                        });
                      }
                      if(id !=null){
                        updatetask1(id, {
                          "name": name_controller.text,
                          "age": age_controller.text,
                        });
                      }
                      name_controller.text = "";
                      age_controller.text = "";
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? 'ENTER' : "UPDATE TASK"),
                  )
                ],
              ),
            ));
  }
  }
