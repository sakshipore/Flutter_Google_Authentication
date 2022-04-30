import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSaver {
  static String namekey = "NAMEKEY";
  static String emailkey = "EMAILKEY";
  static String imgkey = "IMGKEY";
  static String logkey = "LOGKEY";

  static Future<bool> saveName(String username) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(namekey, username);
  }

  static Future<bool> saveMail(String useremail) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(emailkey, useremail);
  }

  static Future<bool> saveImg(String imgUrl) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(imgkey, imgUrl);
  }

  static Future<String?> getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(namekey);
  }

  static Future<String?> getEmail() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(emailkey);
  }

  static Future<String?> getImg() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(imgkey);
  }

  static Future<bool> saveLoginData(bool isUSerLoggedIn) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(logkey, isUSerLoggedIn);
  }

  static Future<bool?> getLogData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getBool(logkey);
  }
}
