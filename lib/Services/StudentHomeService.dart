import 'dart:convert';

import 'package:first/Models/AdvertismentModel.dart';

import 'package:first/Models/CourseLevelsModel.dart';

import 'package:first/global.dart';
import 'package:http/http.dart' as http;

import '../Models/CourseModel.dart';

class StudentHomeService {
  static StudentHomeAdvertisment(endpoint) async {
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    });

    print(response.body);

    if (response.statusCode == 200) {
      List<AdvertismentModel> list = [];

      var item = json.decode(response.body);

      for (var i in item) {
        list.add(AdvertismentModel.fromJson(i));
      }
      return list;
    } else {
      return null;
    }
  }

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
      if (response.body.isEmpty) {
        var obj = response.body;
        return courseModelFromJson(obj);
      } else {
        return 'No Course now';
      }
    } else
      return null;
  }

  static getAllCourses(endpoint) async {
    var token = await getFromSharedPreferences('token');
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "Authorization": "Bearer ${token}",
    });

    print(response.body);

    if (response.statusCode == 200) {
      List<CourseLevelsModel> list = [];

      var item = json.decode(response.body);

      for (var i in item) {
        list.add(CourseLevelsModel.fromJson(i));
      }
      return list;
    } else
      return null;
  }
}
