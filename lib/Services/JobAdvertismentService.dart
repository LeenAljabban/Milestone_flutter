import 'package:first/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class JobAdvertismentService {
  static UploadCv(endpoint, file, advertisment_id) async {
    var diviceId = await getFromSharedPreferences('deviceId');
    var request = http.MultipartRequest('POST', Uri.parse(baseApi + endpoint));
    debugPrint('the file is ${file}');
    if ('${file}' != '') {
      request.files.add(await http.MultipartFile.fromPath('file', file));
      request.fields['device_id'] = diviceId;
      request.fields['advertisment_id'] = advertisment_id;
      request.headers.addAll({
        "content-type": "application/json",
        "Accept": "application/json",
      });
      var response = await request.send();
      print(await response.stream.bytesToString());
      print(response.statusCode);
      if (response.statusCode == 200) {
        return response;
      } else
        return null;
    } else {
      print('select file first');
    }
  }
}
