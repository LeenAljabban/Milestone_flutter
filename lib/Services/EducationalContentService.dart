import 'dart:convert';
import 'package:first/Models/EducationalContentModel.dart';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class EducationalContentService {
  static GetEducationalContent(endpoint, course_name_id) async {
    var token = await getFromSharedPreferences('token');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'course_name_id': course_name_id,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Authorization": "Bearer ${token}",
        });

    print(response.body);

    if (response.statusCode == 200) {
      print("loading*************************");
      List<EducationalContentModel> list = [];
      var item = json.decode(response.body);

      for (var i in item) {
        list.add(EducationalContentModel.fromJson(i));
      }
      return list;
    } else
      return null;
  }

  static GetEducationalContentTeacher(endpoint) async {
    var token = await getFromSharedPreferences('token');
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "Authorization": "Bearer ${token}",
    });

    print(response.body);

    if (response.statusCode == 200) {
      print("loading*************************");
      List<EducationalContentModel> list = [];
      var item = json.decode(response.body);

      for (var i in item) {
        list.add(EducationalContentModel.fromJson(i));
      }
      return list;
    } else
      return null;
  }
}
