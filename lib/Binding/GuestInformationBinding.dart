import 'package:get/get.dart';
import '../Controllers/GuestControllers/GuestInformationControllers.dart';

class GuestInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GuestInformationController(), fenix: true);
  }
}
