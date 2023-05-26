import 'dart:convert';

import 'package:first/Models/AdvertismentModel.dart';

import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class StudentHomeService {


  static StudentHomeAdvertisment(endpoint) async {
    http.Response response =
    await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    });

    print(response.body);

    if (response.statusCode == 200) {
      List<AdvertismentModel> list = [];

      var item = json.decode(response.body);

      for (var i in item) {
        list.add(AdvertismentModel.fromJson(i));
      }
      return list;
    } else
      return null;
  }


}
