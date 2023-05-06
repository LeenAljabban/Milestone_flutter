import 'package:get/get.dart';

import '../Controllers/GuestControllers/GuestHomeController.dart';

class GuestHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GuestHomeController(), fenix: true);
  }
}
