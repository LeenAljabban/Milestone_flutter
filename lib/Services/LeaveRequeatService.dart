import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class LeaveRequestService {
  static LeaveRequest(endpoint, from, to, reason, comment) async {
    var token = await getFromSharedPreferences('token');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'from': from,
          'to': to,
          'reason': reason,
          'comment': comment,
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
