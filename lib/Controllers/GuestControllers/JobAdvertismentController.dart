import 'package:first/Models/AdvertismentModel.dart';

import 'package:get/get.dart';

class JobAdvertismentController extends GetxController {
  AdvertismentModel adv = AdvertismentModel();

  @override
  void onInit() {
    adv = Get.arguments;

    super.onInit();
  }
}
