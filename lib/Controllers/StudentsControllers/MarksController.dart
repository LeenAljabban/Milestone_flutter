import 'package:first/Services/MarksService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../Models/MarkModel.dart';

class MarksController extends GetxController {
  Color blue = Color(0xff2D527E);
  RxBool isloading = false.obs;

  List<MarksModel> marks = [];

  @override
  void onInit() {
    CallViewMarks();
  }

  Future<void> CallViewMarks() async {
    try {
      var data = await MarksService.ViewMarks('student/get/allMarks');
      if (data != null) {
        marks = data;
      } else {
        print('there is a problem');
      }
    } finally {
      isloading(true);
    }
  }
}
