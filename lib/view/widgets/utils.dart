import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class Util {
  static Future<void> writeToPreference(String key, String value) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(key, value);
      print('sucessfully saved $key to preferences');
    } catch (error) {
      print('failed to saved $key to preferences${error}');
    }
  }

  static Future<String?> readFromPreference(String key) async {
    if (null == key || key == '') {
      throw ('No shared Preference key provided');
    }
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(key) ?? null;
    } catch (error) {
      //print('could not read preferences${error}
    }
  }
  static Future<void> removeFromPreference(String key) async {
    if (null == key || key == '') {
      throw ('No shared Preference key provided');
    }
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.remove(key);
      print('sucessfully removed $key to preferences');
    } catch (error) {
      //print('could not read preferences${error}');
   }
}

}

//usage  to save to sharedprefrence
//await Util.writeToPreference('token', cleanedToken);

//to read from shared preference
///get account number from sharedPreference
//final _accountNumber = await Util.readFromPreference('username');