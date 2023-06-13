import 'package:first/Controllers/StudentsControllers/MarkDetailsController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class MarksDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MarkDetailsController(), fenix: true);
  }
}
