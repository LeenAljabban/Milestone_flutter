import 'package:first/Models/GetInfoModel.dart';
import 'package:http/http.dart' as http;

import '../global.dart';

class GetInfoService {
  static getInfo(endpoint) async {
    http.Response response =
        await http.get(Uri.parse(baseApi + endpoint), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    });

    print(response.body);
    print('hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh');

    if (response.statusCode == 200) {
      var obj = response.body;
      return GetInfoModelFromJson(obj);
    } else
      return null;
  }
}
