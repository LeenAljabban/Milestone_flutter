import 'package:get/get.dart';
import '../Controllers/StudentsControllers/EditStudentProfileController.dart';

class EditStudentProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditStudentProfileController(), fenix: true);
  }
}
