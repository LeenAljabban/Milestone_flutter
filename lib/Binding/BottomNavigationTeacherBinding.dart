import 'package:get/get.dart';

import '../Controllers/TeacherControllers/BottomNavigationTeacherController.dart';

class BottomNavigationTeacherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationTeacherController(), fenix: true);
  }
}
