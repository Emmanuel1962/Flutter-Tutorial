import 'package:flutter_tutorial/Sqflite-ToDo/db_helper.dart';
import 'package:flutter_tutorial/Sqflite-ToDo/model.dart';

class UserDBHelper {
  static String tableName =
      "User"; // this our table name created from db_helper

  // creates user & stores the data in  database
  //  creates uses  .insert
  Future<void> createUser(UserModel user) async {
    var cart = await DataBaseHelper
        .instance.database; // this database is coming from db_helper
    await cart!.insert(
        tableName, user.toMap()); // user is what is used to acess our model
  }

//gets user from database
// To get the data it used with .rawQuery which is assgined to a variable called 'list'-List<Map<String,dynamic>>
// Then create a UserModel list and assign to a variable (users)
//  loop through the list of .rawQuery
// then return the list of model(users)
  Future<List<UserModel>> getUsers() async {
    var database = await DataBaseHelper.instance.database;
    List<Map<String, dynamic>> list =
        await database!.rawQuery("SELECT * FROM $tableName");

    List<UserModel> users = [];

    for (var element in list) {
      var person = UserModel.fromMap(element);
      users.add(person);
    }
    return users;
  }

//updates user info in database
// it uses id to update
// update uses .update
// remeber to add '.toMap()' to the variable you are using to acess your model
  Future<void> updateUser(UserModel user) async {
    var database = await DataBaseHelper.instance.database;
    await database!.update(
      tableName,
      user.toMap(),
      where: "id = ?",
      whereArgs: [user.id],
    );
  }

  // delete user from database
  // its uses id to delete
  Future<void> deleteUser(int id) async {
    var database = await DataBaseHelper.instance.database;
    await database!.delete(
      tableName,
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
