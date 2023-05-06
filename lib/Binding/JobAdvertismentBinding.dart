import 'package:get/get.dart';

import '../Controllers/GuestControllers/JobAdvertismentController.dart';

class JobAdvertismentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobAdvertismentController(), fenix: true);
  }
}
