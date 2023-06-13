import 'package:first/Controllers/TeacherControllers/Resignationrequestcontroller.dart';
import 'package:get/get.dart';

import '../Controllers/StudentsControllers/QrScannerController.dart';

class ResignationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResignationRequestController(), fenix: true);
  }
}
