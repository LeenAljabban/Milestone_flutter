import 'dart:convert';
import 'package:first/Models/EducationalContentModel.dart';
import 'package:first/Models/StudentModel.dart';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class GetStudentService {
  static GetStudents(endpoint) async {
    var token = await getFromSharedPreferences('token');
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "Authorization": "Bearer ${token}",
    });

    print(response.body);

    if (response.statusCode == 200) {
      List<CoursesStudents> list = [];
      var item = json.decode(response.body);

      for (var i in item) {
        list.add(CoursesStudents.fromJson(i));
      }
      return list;
    } else
      return null;
  }
}
