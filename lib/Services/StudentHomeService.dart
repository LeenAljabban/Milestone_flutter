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
      var obj = response.body;
      return advertismentModelFromJson(obj);
    } else
      return null;
  }


}
