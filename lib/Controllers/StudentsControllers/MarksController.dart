import 'package:first/Services/MarksService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../Models/MarkModel.dart';

class MarksController extends GetxController {
  Color blue = Color(0xff2D527E);
  RxBool isloading = false.obs;

  List<MarksModel> marks = [];
  List<MarksModel> markDetails = [];

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

  Future<void> viewMarkDetails(courseId) async {
    try {
      var data = await MarksService.viewMarkDetails(
          'student/get/MarksForSpecificCourse', courseId);
      if (data != null) {
        if (data['message'] == "Cannot watch the marks before making rate") {
          Get.toNamed('/Rate', arguments: markDetails);
        } else {
          markDetails = data;
          await Get.toNamed('/MarkDetailes', arguments: markDetails);
        }
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}
