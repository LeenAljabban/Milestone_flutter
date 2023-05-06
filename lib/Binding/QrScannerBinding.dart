import 'package:get/get.dart';

import '../Controllers/StudentsControllers/QrScannerController.dart';

class QrScannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QrScannerController(), fenix: true);
  }
}
