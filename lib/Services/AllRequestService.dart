import 'dart:convert';

import 'package:first/Models/TeacherRequestModel.dart';

import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class AllRequestService {
  static getAllRequests(endpoint) async {
    var token = await getFromSharedPreferences('token');
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      "Authorization": "Bearer ${token}",
    });

    print(response.body);

    if (response.statusCode == 200) {
      List<TeacherRequest> list = [];

      var item = json.decode(response.body);

      for (var i in item) {
        list.add(TeacherRequest.fromJson(i));
      }
      return list;
    } else
      return null;
  }
}
