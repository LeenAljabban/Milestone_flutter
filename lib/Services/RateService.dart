import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class RateService {
  static Rate(
    endpoint,
    rate,
    note,
  ) async {
    var token = await getFromSharedPreferences('token');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'rate': rate,
          'note': note,
          'teacher_id': 1,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Authorization":
              "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE2ODU0MzQ5MTksImV4cCI6MTY4NTQzODUxOSwibmJmIjoxNjg1NDM0OTE5LCJqdGkiOiJDalRBUEVYUFBqOUxBZmo5Iiwic3ViIjoiMTAiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.2-x2QuZ8iF2EwtD6j4I7v9WYo8H7SzSSJR_LSE_71_Q",
        });

    print(response.body);

    if (response.statusCode == 200) {
      var obj = jsonDecode(response.body);

      return obj;
    } else
      return null;
  }
}
