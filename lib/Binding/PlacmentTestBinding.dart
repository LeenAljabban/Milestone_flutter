import 'package:get/get.dart';

import '../Controllers/GuestControllers/PlacementTestController.dart';
import '../Controllers/StudentsControllers/QrScannerController.dart';

class PlacementTestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlacementTestController(), fenix: true);
  }
}
