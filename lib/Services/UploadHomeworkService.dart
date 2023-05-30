import 'package:first/global.dart';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

class UploadHomeworkService {
  static UploadHomework(endpoint, course_id, file, text) async {
    var token = await getFromSharedPreferences('token');
    var request = http.MultipartRequest('POST', Uri.parse(baseApi + endpoint));
    debugPrint('the file is ${file}');
    if ('${file}' != '') {
      request.files.add(await http.MultipartFile.fromPath('file', file));
    } else
      request.fields['file'] = '';
    request.fields['course_id'] = 3.toString();
    if (text != '') {
      request.fields['text'] = text;
    } else
      request.fields['text'] = '';

    request.headers.addAll({
      "content-type": "application/json",
      "Accept": "application/json",
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE2ODUzMTAyMjAsImV4cCI6MTY4NTMxMzgyMCwibmJmIjoxNjg1MzEwMjIwLCJqdGkiOiJaUEpjQjFRd1RvUXRZejVsIiwic3ViIjoiMyIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.bogRex9XyeWt979InUtDhrxeHPCgbv_coQ2tB_8yw14"
    });
    var response = await request.send();
    print(await response.stream.bytesToString());
    print(response.statusCode);
    if (response.statusCode == 200) {
      return response;
    } else
      return null;
  }
}
