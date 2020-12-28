import 'package:candy_app/until/account.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class PreferencesUtil {
  static SharedPreferences prefs;
  static Future<void> setup() async {
    prefs = await SharedPreferences.getInstance();
  }

  static void removePreferences(String key) {
    prefs.remove(key);
  }

  setList(key, List<String> value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList(key, value);
  }

  Future<List<String>> getList(key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key) ??
        ["Read Type Guilines", "Complete Responsive Design", "Bring Groceries", "Take Muffy for walk", "Talk to Pamela and B"];
  }

  setListAccount(key, List<Account> value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList(key, value.map((o) => jsonEncode(o).toString()).toList());
  }

  static getListAccount(key, callBack) async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getStringList(key);
    if (value != null) {
      callBack(value.map((o) => Account.fromJson(jsonDecode(o))).toList());
    } else {
      callBack(new List<Account>());
    }
  }
}
