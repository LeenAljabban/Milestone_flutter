import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class GuestInformationService {
  static GuestInformation(
      endpoint, first_name, last_name, phone, email, education) async {
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'first_name': first_name,
          'last_name': last_name,
          'email': email,
          'phone': phone,
          'education': education,
          'city_id': 1.toString(),
          'verification_code': '',
          'password': '522',
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        });

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 201) {
      var obj = jsonDecode(response.body);

      return obj;
    } else
      return null;
  }
}
