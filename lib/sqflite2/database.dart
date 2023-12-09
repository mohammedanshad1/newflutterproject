import 'package:sqflite/sqflite.dart'as sql;

class sqlHelper{


  static Future<void>createTables(sql.Database db1 )async{


    await db1.execute("""(
    
    create Tables login,
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    username.TEXT,
    password.TEXT,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    )""");
  }


  static Future<sql.Database>opendb1() async{

    return sql.openDatabase("db",version: 1,

    onCreate:(sql.Database database, int version)async{

      createTables(database);
    });


  }

  static Future<int> AddnewUser(String username,String password) async {
    final db = await sqlHelper.opendb1(); ///to open database
    final data = {"username":username,"password":password};
    final id = await db.insert("db", data,);
    return id;
  }

  static Future<List<Map>>userFound1(String username,String password )async{
    final db = await sqlHelper.opendb1(); ///to open database

    final data=await db.rawQuery("select * from user where  username= '$username' AND password = '$password' ");

    if(data.isNotEmpty){

      return data;
    }
    return data;
  }
  static Future<List<Map<String, dynamic>>> checkLogin1(String username,String password) async {
    final db = await sqlHelper.opendb1(); ///to open database
    final data=await db.rawQuery("select * from user where  username= '$username' AND password = '$password' ");

    if(data.isNotEmpty){

      return data;
    }
    return data;
  }


}