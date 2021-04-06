import 'package:flutter/material.dart';

//plugins
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

//modles
import '../model/training_menu.dart';

class MenusList extends StatefulWidget {
  @override
  _MenusListState createState() => _MenusListState();
}

class _MenusListState extends State<MenusList> {
  String _name = "";
  int _delete_id = 0;
  Database database;
  initDb() async {
    // Create an absolute path to databse
    final database_name = 'your_database.db';
    final database_path = await getDatabasesPath();
    final String path_to_db = path.join(database_path, database_name);

    // SQL command literal
    final String sql =
        'CREATE TABLE Student (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)';

// Open or connect database
    database = await openDatabase(path_to_db,
        onCreate: (Database db, int version) async {
      await db.execute(sql);
      print("execution!");
    }, version: 1);
  }

  //search record
  Future<bool> searchDb(int id) async {}

  //insert new record
  Future<int> insertDb(new_name) async {
    final String table_name = 'Student';
    final String name = new_name;
    Map<String, dynamic> record = {'name': name};
    final int result = await database.insert(table_name, record);
    print("insert $new_name !");
  }

  //read all records
  Future<List> readDb() async {
    var result = await database.query("Student", columns: ["id", "name"]);

    return result.toList();
  }

  // count record number
  Future<int> countDbRecord() async {
    var all_record = await readDb();
    return all_record.length;
  }

  //delete oldest record
  deleteRecord(int id) async {
    try {
      var _result =
          await database.delete("Student", where: "id = ?", whereArgs: [id]);
    } catch (e) {
      print("catch : $e");
    }
  }

  @override
  void initState() {
    super.initState();
    initDb();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 400,
            child: ListView(
              children: [
                TrainingMenuItem(
                  trainingTitle: "スクワット",
                  targetWeight: 100.5,
                  createdDate: DateTime.now(),
                ),
                // TrainingMenuItem(
                //   title: "スクワット",
                // ),
                // TrainingMenuItem(
                //   title: "スクワット",
                // ),
                // TrainingMenuItem(
                //   title: "スクワット",
                // ),
                // Container(
                //   // child: Text(Provider.of(context)),
                //   margin: EdgeInsets.all(5),
                //   child: TextField(
                //     onChanged: (input_string) {
                //       setState(() {
                //         _name = input_string;
                //       });
                //     },
                //   ),
                //   height: 50,
                //   decoration: BoxDecoration(
                //       // color: Colors.blue,
                //       borderRadius: BorderRadius.circular(10)),
                // ),
                // Container(
                //   margin: EdgeInsets.all(5),
                //   height: 50,
                //   child: RaisedButton(
                //     onPressed: () {
                //       insertDb(_name);
                //       print("insert!");
                //     },
                //     child: Text("insert db"),
                //   ),
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.circular(10)),
                // ),
                // Container(
                //   margin: EdgeInsets.all(5),
                //   height: 50,
                //   child: RaisedButton(
                //     onPressed: () async {
                //       var _result = await readDb();
                //       print(_result);
                //     },
                //     child: Text("read db"),
                //   ),
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.circular(10)),
                // ),
                // Container(
                //   child: RaisedButton(
                //     child: Text("count record number"),
                //     onPressed: () async {
                //       var num = await countDbRecord();
                //       print("record number : $num");
                //     },
                //   ),
                //   margin: EdgeInsets.all(5),
                //   height: 50,
                //   decoration:
                //       BoxDecoration(borderRadius: BorderRadius.circular(10)),
                // ),
                // Container(
                //   child: TextField(
                //     onChanged: (id) {
                //       setState(() {
                //         _delete_id = int.parse(id);
                //       });
                //     },
                //   ),
                // ),
                // Container(
                //   child: RaisedButton(
                //       child: Text("delete record"),
                //       onPressed: () async {
                //         await deleteRecord(_delete_id);
                //       }),
                //   margin: EdgeInsets.all(5),
                //   height: 50,
                //   decoration: BoxDecoration(
                //       color: Colors.blue,
                //       borderRadius: BorderRadius.circular(10)),
                // ),
                // Container(
                //   child: RaisedButton(
                //     child: Text("close db"),
                //     onPressed: () async {
                //       await database.close();
                //     },
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
