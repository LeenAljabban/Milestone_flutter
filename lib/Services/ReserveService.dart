import 'dart:convert';
import 'package:first/global.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
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
          // "Authorization": "Bearer ${token}",
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
      if (response.body == 'you can not reserve in this level') {
        Get.defaultDialog(
          title: 'you can not reserve in this level',
          titlePadding: EdgeInsets.only(top: 20, left: 7, right: 7),
          titleStyle: TextStyle(
              color: Color(0xffEF5432),
              fontFamily: 'segoepr',
              fontWeight: FontWeight.bold),
          radius: 20,
          content: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xff2D527E),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      'OK',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'segoepr',
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      } else {
        var obj = jsonDecode(response.body);

        return obj;
      }
    } else
      return null;
  }
}
