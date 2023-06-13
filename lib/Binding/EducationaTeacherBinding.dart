import 'package:first/Controllers/TeacherControllers/Resignationrequestcontroller.dart';
import 'package:get/get.dart';

import '../Controllers/StudentsControllers/QrScannerController.dart';
import '../Controllers/TeacherControllers/AllRequestController.dart';
import '../Controllers/TeacherControllers/EducationalContentTeacherController.dart';

class EducationalTeacherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EducationalContentTeacherController(), fenix: true);
  }
}
