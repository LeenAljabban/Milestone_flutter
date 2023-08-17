import 'dart:convert';
import 'package:first/Models/MarkModel.dart';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class MarksService {
  static ViewMarks(endpoint) async {
    var token = await getFromSharedPreferences('token');
    http.Response response =
    await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      return marksModelFromJson(response.body);
    } else
      return null;
  }

  static viewMarkDetails(endpoint,
      courseId,) async {
    var token = await getFromSharedPreferences('token');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'course_id': courseId,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Authorization": "Bearer ${token}",
        });

    print(response.body);


    if (response.statusCode == 200) {
      var obj = jsonDecode(response.body);

      return obj;
    } else
      return null;
  }
}
