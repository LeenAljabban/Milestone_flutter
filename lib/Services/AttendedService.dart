import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

import '../Models/AttendendModel.dart';

class AttendendService {
  static getAttendend(endpoint, courseId) async {
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'course_id': courseId,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        });

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      // var obj = jsonDecode(response.body);

      return attendedModelFromJson(response.body);
    } else {
      return null;
    }
  }
}
