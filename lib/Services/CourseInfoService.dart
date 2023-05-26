import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

import '../Models/PlacementTestModel.dart';

class CourseInfoService {
  static getCourseInfo(endpoint) async {
    var token = await getFromSharedPreferences('token');
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "Authorization": "Bearer ${token}",
    });
    print("/////////////////////////////////////////////////");
    print(response.body);

    if (response.statusCode == 200) {
      var obj = response.body;
      return placementTestModelFromJson(obj);
    } else
      return null;
  }
}
