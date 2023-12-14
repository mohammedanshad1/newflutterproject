
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';



void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("task_box"); //database creating



  runApp(MaterialApp(
    home: todo(),
  ));
}

class todo extends StatefulWidget {
  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {

  List<Map<String, dynamic>> task = []; //to store data
                                        //first create empty list

  final tbox = Hive.box("task_box"); //object creation
  @override
  void initState() {
    // refreshing the ui

    super.initState();
    loadTask();
  }

  Future<void> createTask(Map<String, dynamic>task1) async {
    await tbox.add(task1);
    loadTask(); //call function
  }

//read all data
  void loadTask() async {
    final data = tbox.keys.map((id) {
      final value = tbox.get(id);
      return {"key": id, "name": value["name"], "details": value["details"]};
      // all items stored in data


    }).toList();
    setState(() {
      task = data.reversed.toList(); //data items  to task

    });
  }

  ///updating hive data
  Future<void> updatetask(int key, Map<String, dynamic>uptask) async {
    await tbox.put(key, uptask);
    loadTask();
  }

  ///deleting hive data

  Future<void> deletetask(int key) async {
    await tbox.delete(key);
    loadTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hive"),),

      body:
      task.isEmpty ? const Center(
          child: Text("NO DATA", style: TextStyle(fontSize: 40),))
          : ListView.builder(
          itemCount: task.length,
          itemBuilder: (context, index) {
            return Card(color: Colors.pink,
              child: ListTile(
                title: Text("${task[index]['name']}"),
                subtitle: Text(task[index]['details']),
                trailing: Wrap(


                  children: [
                    IconButton(
                        onPressed: () {
                          showForm(context,task[index]['key']);
                        },
                        icon: const Icon(Icons.edit_calendar)),
                    IconButton(
                        onPressed: () {
                          deletetask(task[index]['key']);
                        },
                        icon: const Icon(Icons.delete)),
                  ],
                ),
              ),

            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(context,null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final name_controller = TextEditingController();
  final details_controller = TextEditingController();

  void showForm( BuildContext context,int? id) async {
    if (id != null) {
      final ex_task = task.firstWhere((element) => ["key"] == id);
      name_controller.text = ex_task["name"];
      details_controller.text = ex_task["details"];
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
                    controller: details_controller,
                    decoration: const InputDecoration(
                        hintText: "details", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        createTask({
                          'name': name_controller.text,
                          'details': details_controller.text
                        });
                      }
                      if(id !=null){
                        updatetask(id, {
                       "name": name_controller.text,
                       "details": details_controller.text,
                        });
                      }
                      name_controller.text = "";
                      details_controller.text = "";
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? 'CREATE TASK' : "UPDATE TASK"),
                  )
                ],
              ),
            ));
  }
}