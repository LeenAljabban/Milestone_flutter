import 'package:first/Models/AdvertismentModel.dart';
import 'package:get/get.dart';


class PlacementTestRulesController extends GetxController {

  AdvertismentModel? AdvModel;
  var isLoading = false.obs;

  @override
  void onInit() {
    AdvModel = Get.arguments;
  }


}
