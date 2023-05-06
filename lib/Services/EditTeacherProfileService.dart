import 'dart:convert';
import 'dart:io';
import 'package:first/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class EditTeacherProfileService {
  static EditTeacherProfile(endpoint, username, email, phone, birthday,
      file) async {
    var token = await getFromSharedPreferences('token');
    var request = http.MultipartRequest('POST', Uri.parse(baseApi + endpoint));
    debugPrint('the image is ${file}');
    if ('${file}' != '') {
      request.files.add(http.MultipartFile(
          'image', File(file).readAsBytes().asStream(), File(file).lengthSync(),
          filename: file
              .split("/")
              .last));
    }
    request.fields['username'] = username;
    request.fields['email'] = email;
    request.fields['phone'] = phone;
    request.fields['birthdate'] = birthday;

    request.headers.addAll({
      "content-type": "application/json",
      "Authorization": "Bearer ${token}"
    });
    var response = await request.send();
    if (response.statusCode == 200) {
      return response;
    } else
      null;
  }
}
