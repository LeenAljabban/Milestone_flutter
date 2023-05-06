import 'package:get/get.dart';
import '../Controllers/TeacherControllers/LeaveRequestController.dart';

class LeaveRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeaveRequestController(), fenix: true);
  }
}
