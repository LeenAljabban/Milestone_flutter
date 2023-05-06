import 'package:get/get.dart';
import '../Controllers/TeacherControllers/EditTeacherProlfileController.dart';

class EditTeacherProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditTeacherProfileController(), fenix: true);
  }
}
