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
          "Authorization":
              "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE2ODY1NDk2ODUsImV4cCI6MTY4NjU1MzI4NSwibmJmIjoxNjg2NTQ5Njg1LCJqdGkiOiJPcWZ3MVlBQ1BldVFPQXlDIiwic3ViIjoiMyIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.6E1EOAIIXC16MC_0BfAsj1gnHKWvc4Ic1VIpFuNKYyQ",
        });

    if (response.statusCode == 200) {
      return true;
    } else
      return false;
  }
}
