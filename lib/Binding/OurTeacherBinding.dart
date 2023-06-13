import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../Controllers/TeacherControllers/OurTeacherController.dart';

class OurTeacherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OueTeacherController(), fenix: true);
  }
}
