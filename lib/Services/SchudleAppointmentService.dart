import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class SchudleAppointmentService {
  static SendAppointmentRequest(
      endpoint, course_id, date, time, zoom_url) async {
    var token = await getFromSharedPreferences('token');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'course_id': course_id,
          'date': date,
          'time': time,
          'zoom_url': zoom_url,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Authorization": "Bearer $token",
        });

    if (response.statusCode == 200) {
      return true;
    } else
      return false;
  }
}
