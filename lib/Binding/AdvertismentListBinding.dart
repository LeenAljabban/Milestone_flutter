import 'package:get/get.dart';

import '../Controllers/GuestControllers/AdvertismentListController.dart';

class TeachersListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TeachersListController(), fenix: true);
  }
}
