import 'package:first/Models/GetInfoModel.dart';
import 'package:get/get.dart';

import '../../Services/GetInfoService.dart';

class GetInfoController extends GetxController {

  GetInfoModel? getInfoModel;
  var isLoading = false.obs;

  @override
  void onInit() {
    CallGetInfo();
  }

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
    } finally {
      isLoading(true);
    }
  }
}
