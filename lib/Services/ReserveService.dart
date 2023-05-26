import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

import '../Models/AdvertismentModel.dart';

class ReserveService {
  static CourseInfo(endpoint, Adv_id) async {
    var token = await getFromSharedPreferences('token');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'advertisment_id': Adv_id,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Authorization": "Bearer ${token}",
        });

    print(response.body);

    if (response.statusCode == 200) {
      var obj = response.body;
      return advertismentModelFromJson(obj);
    } else
      return null;
  }

  static Reserve(endpoint, add_id) async {
    var token = await getFromSharedPreferences('token');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'add_id': add_id,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Authorization": "Bearer ${token}",
        });

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var obj = jsonDecode(response.body);

      return obj;
    } else
      return null;
  }
}
