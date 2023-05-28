import 'dart:ffi';

import 'package:first/Services/StudentHomeService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/AdvertismentModel.dart';
import '../../Models/CourseInfoModel.dart';

class StudentHomeController extends GetxController {
  Color blue = Color(0xff2D527E);
  RxInt activeIndex = 0.obs;
  var isLoading = false.obs;
  var isLoading2 = false.obs;
  List<AdvertismentModel> advertisments = [];
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  var is_sun = false;
  var is_mon = false;
  var is_tue = false;
  var is_wed = false;
  var is_thu = false;
  var is_fri = false;
  var is_sat = false;
  @override
  void onInit() {
    try {
      CallGetCourseInfo();
      CallStudentHomeAdvertisment();
    } finally {}
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

  CourseInfo? courseinfo;

  CallGetCourseInfo() async {
    try {
      var data = await StudentHomeService.getCourseInfo(
        'student/get/attendenceDays',
      );
      if (data != null) {
        courseinfo = data;
      } else {
        print('there is a problem');
      }
    } finally {
      for (int i = 0; i < courseinfo!.days.length; i++) {
        if (courseinfo!.days[i].name == 'Saturday') {
          is_sat = true;
        }
        if (courseinfo!.days[i].name == 'Sunday') {
          is_sun = true;
        }
        if (courseinfo!.days[i].name == 'Monday') {
          is_mon = true;
        }
        if (courseinfo!.days[i].name == 'Tuesday') {
          is_tue = true;
        }
        if (courseinfo!.days[i].name == 'Wednesday') {
          is_wed = true;
        }
        if (courseinfo!.days[i].name == 'Thursday') {
          is_thu = true;
        }
        if (courseinfo!.days[i].name == 'Friday') {
          is_fri = true;
        }
      }
      isLoading2(true);
    }
  }
}
