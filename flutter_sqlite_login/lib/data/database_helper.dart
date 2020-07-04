import 'dart:io';

import 'package:fluttersqlitelogin/models/user_model.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

//sigleton class means only one instance is created thay can't have more
//then one obj ,everytime u will deal a one database

class DatabaseHelper{
  static final DatabaseHelper _dbHelperInstance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _dbHelperInstance;

  static Database _db;

  Future<Database> get db async{
    if(_db != null){
      return _db;
    }
    _db = await initDb(); //if else null so create kari return karse(initDb method call karine)
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async{
    String sql = "CREATE TABLE UserModel(id INTEGER PRIMARY KEY, username TEXT, password TEXT)";
    await db.execute(sql);
    print("Table is Created");
  }

  //save the user when pages.login done //insertion
  Future<int> saveUser(UserModel userModel) async {
    var dbClient = await db;
    int res = await dbClient.insert("UserModel", userModel.toMap());
    return res;
  }

  //deletion
  Future<int> deleteUser(UserModel userModel) async {
    var dbClient = await db;
    int res = await dbClient.delete("UserModel");
    return res;
  }
}