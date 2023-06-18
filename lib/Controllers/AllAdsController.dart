import 'dart:ffi';

import 'package:first/Models/CourseLevelsModel.dart';
import 'package:first/Services/StudentHomeService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/AdvertismentModel.dart';
import '../../Models/CourseInfoModel.dart';

class AllAdsController extends GetxController {
  Color blue = Color(0xff2D527E);
  RxInt activeIndex = 0.obs;

  var isLoading3 = false.obs;
  List<AdvertismentModel> advertisments = [];

  @override
  void onInit() {
    try {
      CallAdvertisment();
    } finally {}
  }

  CallAdvertisment() async {
    try {
      var data = await StudentHomeService.StudentHomeAdvertisment(
        'advertisements',
      );
      if (data != null) {
        advertisments.addAll(data);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading3(true);
    }
  }
}
