import 'dart:convert';
import 'package:first/global.dart';
import 'package:http/http.dart' as http;

class QrScannerService {
  static SubmitQr(
    endpoint,
    qr_code,
  ) async {
    var token = await getFromSharedPreferences('token');
    http.Response response = await http.post(Uri.parse(baseApi + endpoint),
        body: jsonEncode({
          'qr_code': qr_code,
        }),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          "Authorization": "Bearer ${token}",
        });

    print(response.body);

    if (response.statusCode == 200) {
      var obj = jsonDecode(response.body);

      return obj;
    } else
      return null;
  }
}
