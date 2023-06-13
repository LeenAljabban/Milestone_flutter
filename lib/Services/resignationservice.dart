import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

import '../Models/PlacementTestModel.dart';

class Resignationsrvice {
  static SubmitResignation(
    endpoint,
    reason,
  ) async {
    var token = await getFromSharedPreferences('token');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'reason': reason,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Authorization": "Bearer ${token}",
        });

    // print(response.body);

    if (response.statusCode == 200) {
      // var obj = jsonDecode(response.body);
      print("your request sent successfully");
      return true;
    } else
      return null;
  }
}
