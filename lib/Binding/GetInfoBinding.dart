import 'package:first/Controllers/GuestControllers/GetInfoController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class GetInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetInfoController(), fenix: true);
  }
}
