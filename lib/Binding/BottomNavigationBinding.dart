import 'package:get/get.dart';
import '../Controllers/StudentsControllers/BottomNavigationController.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavigationController(), fenix: true);
  }
}
