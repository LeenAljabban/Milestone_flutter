import 'package:first/Models/UserModel.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeachersListController extends GetxController {
  final scrollController = ScrollController();
  var list = <UserModel>[];
  var isloading = false.obs;

  @override
  void onInit() {
    list = Get.arguments;
    isloading(true);
    super.onInit();
  }
}
