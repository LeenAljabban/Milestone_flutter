import 'package:get/get.dart';
import '../Controllers/TeacherControllers/AttendentController.dart';

class AttendentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AttendentController(), fenix: true);
  }
}
