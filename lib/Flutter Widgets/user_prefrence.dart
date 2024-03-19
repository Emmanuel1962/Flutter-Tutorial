import 'package:shared_preferences/shared_preferences.dart';

class SimplePreferences {
  //this is the initilized place
  static late SharedPreferences _preferences;
  static int _score = 0;
  static String _name = "";

  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
    // shared preferences can be null.
    _score = _preferences.getInt('keyscore') ??
        0; // this is a null operator while '!' is a null bang
    _name = _preferences.getString('keyname') ?? '';
  }

  static Future setScore(int score) async {
    // this is to set the score and saving it
    await _preferences.setInt('keyscore', score);
  }

  static getscore() => _score;

  static Future setName(String name) async {
    await _preferences.setString('keyname', name);
  }

  static getname() => _name;
}
