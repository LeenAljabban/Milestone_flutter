import 'package:first/Models/AdvertismentModel.dart';
import 'package:get/get.dart';

import '../../global.dart';


class PlacementTestRulesController extends GetxController {

  AdvertismentModel? AdvModel;
  var isLoading = false.obs;
  RxString token = ''.obs;

  @override
  Future<void> onInit() async {
    AdvModel = Get.arguments;
    token.value = await getFromSharedPreferences('token');
  }


}
