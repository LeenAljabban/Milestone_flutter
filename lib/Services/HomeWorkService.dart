import 'dart:convert';
import 'package:first/Models/HomeworkModel.dart';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';

class HomeWorkService {
  static ViewHomeWork(endpoint) async {
    var token = await getFromSharedPreferences('token');
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE2ODU0NDk0NTksImV4cCI6MTY4NTQ1MzA1OSwibmJmIjoxNjg1NDQ5NDU5LCJqdGkiOiJDTlp0cVYxb1g0clpCT2hoIiwic3ViIjoiMTAiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.q29_wBCCaCxPYHIOeyH1Dxs5PKVKg-RSmnHDvA3AnlY',
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
