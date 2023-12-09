//
// class SQLhelper {
//
//
//   static Future<void> createTable( sql.Database db) async{
//
//
//     await db.execute("""(
//     Create Table user,
//     id INTEGER PRIMARYKEY AUTOINCREMENT NOT NULL,
//     username.TEXT,
//     email.TEXT,
//
//
//     createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
//     )""");
// }
//
// static Future<sql.Database>opendb() async{
//
//     return sql.openDatabase("datauser",version:1,
//        onCreate: (sql.Database database, int version) async {
//       await createTable(database);
//       });
//
//
//
// }
//   static Future<int> AddnewUser(String username, String email,String password) async {
//     final db = await SQLhelper.opendb(); ///to open database
//     final data = {"username":username,"email":email,"password":password};
//     final id = await db.insert("datauser", data,);
//     return id;
//   }
//
//   static Future<List<Map<String, dynamic>>> checkLogin(String username,String password) async {
//     final db = await SQLhelper.opendb(); ///to open database
//     final data=await db.rawQuery("select * from user where  username= '$username' AND password = '$password' ");
//
//         if(data.isNotEmpty){
//
//           return data;
//     }
//         return data;
//   }
//
//   static Future<List<Map>>userFound(String uname,String email)async{
//     final db = await SQLhelper.opendb(); ///to open database
//
//     final data=await db.rawQuery("select * from user where  email= '$email' AND username = '$uname' ");
//
//     if(data.isNotEmpty){
//
//       return data;
//     }
//     return data;
//   }
//
//
//
//
//
//
//
//
//
//
//
// }