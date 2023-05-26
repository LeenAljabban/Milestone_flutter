import 'package:get/get.dart';

import '../Controllers/StudentsControllers/ReserveController.dart';

class ReserveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReserveController(), fenix: true);
  }
}
