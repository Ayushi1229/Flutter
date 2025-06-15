import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseDemo extends StatefulWidget {
  const DatabaseDemo({super.key});

  @override
  State<DatabaseDemo> createState() => _DatabaseDemoState();
}

class _DatabaseDemoState extends State<DatabaseDemo> {
  late Database _database;
  TextEditingController title = TextEditingController();
  TextEditingController desc = TextEditingController();
  List<Map<String, dynamic>> data = [];

  int DB_version=1;

  Future<void> initDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'myDatabase.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE myTable(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, desc TEXT)',
        );
      },
      // onUpgrade: (db,),
      version: DB_version,
    );
  }

  Future<void> _fetchData() async {
    List<Map<String, dynamic>> userData = await _database.query('myTable');
    setState(() {
      data = userData;
    });
    print(data);
  }

  Future<void> _addData(String title, String desc) async {
    await _database.insert('myTable', {'title': title, 'desc': desc});
    _fetchData(); // Fetch data after adding
  }

  Future<void> _deletemyTable(int id) async {
    await _database.delete(
      'myTable',
      where: 'id=?',
      whereArgs: [id],
    );
    _fetchData();
  }

  Future<void> _updatemyTable(int id, String newTitle, String newDesc) async {
    await _database.update(
      'myTable',
      {'title': newTitle, 'desc': newDesc},
      where: 'id=?',
      whereArgs: [id],
    );
    _fetchData();
  }

  @override
  void initState() {
    super.initState();
    initDatabase().then((_) {
      _fetchData(); // Fetch data when the database is initialized
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: title,
            decoration: InputDecoration(
              labelText: 'Enter title',
              hintText: 'Enter title',
              labelStyle: TextStyle(color: Colors.grey),
            ),
          ),
          TextFormField(
            controller: desc,
            decoration: InputDecoration(
              labelText: 'Enter desc',
              hintText: 'Enter desc',
              labelStyle: TextStyle(color: Colors.grey),
            ),
          ),
          FilledButton(
            onPressed: () {
              _addData(title.text, desc.text);
            },
            child: Text("Submit"),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.supervised_user_circle),
                    trailing: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // delete user
                            _deletemyTable(data[index]['id']);
                          },
                          icon: Icon(Icons.delete, color: Colors.black),
                        ),
                        IconButton(
                          onPressed: () {
                            // edit user
                            _updatemyTable(
                                data[index]['id'],
                                'Updated Title',
                                'Updated Description');
                          },
                          icon: Icon(Icons.edit, color: Colors.black),
                        ),
                      ],
                    ),
                    title: Text(data[index]['title']),
                  ),
                );
              },
              itemCount: data.length,
            ),
          ),
        ],
      ),
    );
  }
}