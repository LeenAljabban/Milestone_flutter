import 'dart:convert';

import 'package:first/Models/UserModel.dart';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class LoginService {
  static Login(endpoint, email, password, fcm) async {
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'email': email,
          'password': password,
          'fcm_token': fcm,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        });
    print(response.body);

    if (response.statusCode == 200) {
      var obj = jsonDecode(response.body);
      var user = UserModel.fromJson(obj);


      return user;
    } else
      return null;
  }
}
