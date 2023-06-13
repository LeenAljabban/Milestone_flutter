import 'package:first/Services/RateService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RateController extends GetxController {
  late TextEditingController noteController;
  RxInt starnumber = 1.obs;

  @override
  void onInit() {
    noteController = TextEditingController();
  }

  CallRate() async {
    try {
      var data = await RateService.Rate(
          'student/rate', starnumber.value, noteController.text);
      if (data != null) {
        // show marks
        print('done');
      } else {
        print('Try again');
      }
    } finally {}
  }
}
