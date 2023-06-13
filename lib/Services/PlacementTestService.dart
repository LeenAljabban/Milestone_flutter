import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

import '../Models/PlacementTestModel.dart';

class PlacementTestService {
  static getquestionslist(endpoint) async {
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    });

    print(response.body);

    if (response.statusCode == 200) {
      var obj = response.body;
      return placementTestModelFromJson(obj);
    } else
      return null;
  }

  static SubmitAnswers(
    endpoint,
    testid,
    answersList,
  ) async {
    var device_id = await getFromSharedPreferences('device_id');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'guest_id': 1,
          'test_id': testid,
          'mark': '',
          'answers': answersList,
          'device_id': device_id,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        });
    print(response.body);

    if (response.statusCode == 200) {
      var obj = jsonDecode(response.body);

      // var user = UserModel.fromJson(obj);

      return obj;
    } else
      return null;
  }
}
