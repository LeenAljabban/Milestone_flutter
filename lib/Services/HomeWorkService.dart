import 'dart:convert';
import 'package:first/Models/HomeworkModel.dart';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class HomeWorkService {
  static ViewHomeWork(endpoint) async {
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
      List<HomeworkModel> list = [];

      var item = json.decode(response.body);
      print(item);
      for (var i in item) {
        list.add(HomeworkModel.fromJson(i));
      }
      return list;
    } else
      return null;
  }
}
