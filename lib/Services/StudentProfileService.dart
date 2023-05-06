import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

import '../Models/UserModel.dart';

class StudentProfileService {
  static StudentProfile(endpoint) async {
    var token = await getFromSharedPreferences('token');
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${token}',
    });

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var obj = jsonDecode(response.body);
      var user = UserModel.fromJson(obj);

      return user;
    } else
      return null;
  }
}
