import 'package:first/Services/RateService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/MarkModel.dart';

class RateController extends GetxController {
  late TextEditingController noteController;
  RxInt starnumber = 1.obs;
  late MarksModel detail;

  @override
  void onInit() {
    noteController = TextEditingController();
    detail = Get.arguments;
  }

  CallRate() async {
    try {
      var data = await RateService.Rate(
          'student/rate', starnumber.value, noteController.text);
      if (data != null) {
        // show marks
        Get.toNamed('/MarkDetailes', arguments: detail);
        print('done');
      } else {
        print('Try again');
      }
    } finally {}
  }
}
