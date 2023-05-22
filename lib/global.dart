import 'package:shared_preferences/shared_preferences.dart';

String baseApi = 'http://192.168.1.106:8000/api/';

saveToSharedPreferences(String key, String value) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}

Future<String> getFromSharedPreferences(String key) async {
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.getString(key) ?? '';
  return value;
}
