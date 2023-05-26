import 'package:first/Services/StudentHomeService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/AdvertismentModel.dart';

class StudentHomeController extends GetxController {
  Color blue = Color(0xff2D527E);
  RxInt activeIndex = 0.obs;
  var isLoading = false.obs;
  List<AdvertismentModel> advertisments = [];
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  @override
  void onInit() {
    CallStudentHomeAdvertisment();
  }

  CallStudentHomeAdvertisment() async {
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
      isLoading(true);
    }
  }
}
