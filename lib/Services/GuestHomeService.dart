import 'dart:convert';

import 'package:first/Models/AdvertismentModel.dart';
import 'package:first/Models/PhotoModel.dart';
import 'package:first/Models/UserModel.dart';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class GuestHomeService {
  static GuestHomePhotos(endpoint) async {
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    });

    print(response.body);

    if (response.statusCode == 200) {
      var obj = response.body;
      return PhotoModelFromJson(obj);
    } else
      return null;
  }

  static GuestHomeAdvertisment(endpoint) async {
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    });

    print(response.body);

    if (response.statusCode == 200) {
      var obj = response.body;
      return advertismentModelFromJson(obj);
    } else
      return null;
  }

  static GuestHomeTeachers(endpoint) async {
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    });

    print(response.body);
    if (response.statusCode == 200) {
      List<UserModel> list = [];

      var item = json.decode(response.body);

      for (var i in item) {
        list.add(UserModel.fromJson(i));
      }

      return list;
    } else
      return null;
  }
}
