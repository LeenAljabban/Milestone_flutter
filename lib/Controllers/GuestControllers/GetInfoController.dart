import 'package:first/Models/GetInfoModel.dart';

import '../../Services/GetInfoService.dart';

class GetInfoController {
  GetInfoModel? getInfoModel;
  CallGetInfo() async {
    try {
      var data = await GetInfoService.getInfo(
        'get/nformation',
      );
      if (data != null) {
        getInfoModel = data;
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}
