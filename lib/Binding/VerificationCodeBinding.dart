import 'package:first/Controllers/GuestControllers/VerificationCodeController.dart';
import 'package:get/get.dart';

class VerificationCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationCodeController(), fenix: true);
  }
}
