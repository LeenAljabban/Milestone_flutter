import 'package:get/get.dart';
import '../Controllers/TeacherControllers/StudentController.dart';

class GetStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentController(), fenix: true);
  }
}
