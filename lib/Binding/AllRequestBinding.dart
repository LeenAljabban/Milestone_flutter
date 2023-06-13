import 'package:first/Controllers/TeacherControllers/Resignationrequestcontroller.dart';
import 'package:get/get.dart';

import '../Controllers/StudentsControllers/QrScannerController.dart';
import '../Controllers/TeacherControllers/AllRequestController.dart';

class AllRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllRequestController(), fenix: true);
  }
}
