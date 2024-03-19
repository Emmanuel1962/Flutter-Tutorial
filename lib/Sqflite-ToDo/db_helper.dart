import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

// DataaseHelper is used for large storage
// NB: they are private variables, those are the ones with '_'
//  _oncreate creates your table
// then you are calling your _oncreate inside your _initDatabase,
// the we are caliing our _initDatabse inside our _database which database is the main function

class DataBaseHelper {
  static const _databaseName = "app.db";
  static const _databaseVersion = 1;

  DataBaseHelper._internal();
  static final DataBaseHelper dataBaseHelper = DataBaseHelper._internal();
  static DataBaseHelper get instance => dataBaseHelper;

  static Database? _database; // This is comming from our package SQFLITE above

// we want to use the variable database to run the function below,
// and its being used in our main

  Future<Database?> get database async {
    // '!=' means not equal to.

    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    String path = join(dbPath, _databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
      "CREATE TABLE User(id INTERGER PRIMARY KEY, username TEXT, description TEXT)",
    );
  }
}
