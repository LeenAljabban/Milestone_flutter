import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class RateService {
  static Rate(endpoint,
      rate,
      note,) async {
    var token = await getFromSharedPreferences('token');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'rate': rate,
          'note': note,

        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Authorization": "Bearer $token",
        });

    print(response.body);

    if (response.statusCode == 200) {
      var obj = jsonDecode(response.body);

      return obj;
    } else
      return null;
  }
}
