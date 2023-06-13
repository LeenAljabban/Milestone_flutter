import 'package:first/Controllers/TeacherControllers/Resignationrequestcontroller.dart';
import 'package:get/get.dart';

import '../Controllers/StudentsControllers/QrScannerController.dart';
import '../Controllers/TeacherControllers/SpecificCourseController.dart';

class SpicificCourseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpecificCourseController(), fenix: true);
  }
}
