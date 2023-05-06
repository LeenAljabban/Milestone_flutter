import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class VerificationCodeService {
  static VerificationCode(endpoint, code, email) async {
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'verification_code': code,
          'email': email,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
        });

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      var obj = jsonDecode(response.body);

      return obj;
    } else
      return null;
  }
}
