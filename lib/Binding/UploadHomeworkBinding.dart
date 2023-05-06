import 'package:get/get.dart';
import '../Controllers/TeacherControllers/LeaveRequestController.dart';
import '../Controllers/TeacherControllers/UploadHomeorkController.dart';

class UploadHomeworkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadHomeworkController(), fenix: true);
  }
}
