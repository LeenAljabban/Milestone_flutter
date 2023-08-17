import 'package:first/Controllers/TeacherControllers/TeacherHomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/TeacherCourses.dart';
import '../../Services/SpicificCourseService.dart';
import '../../Services/TeacherHomeService.dart';

class SpecificCourseController extends GetxController {
  Color blue = Color(0xff2D527E);

  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  var isLoading3 = false.obs;

  void onInit() {
    try {
      CallGetCourseInfo();
    } finally {}
  }

  var is_sun = false;
  var is_mon = false;
  var is_tue = false;
  var is_wed = false;
  var is_thu = false;
  var is_fri = false;
  var is_sat = false;
  List<TeacherCourses>? teacherCourses;
  late TeacherCourses teacherCourse;

  CallGetCourseInfo() async {
    try {
      var data = await SpecificCourseService.getCourseInfo(
        'teacher/get/Course/ById/' + Get.arguments.toString(),
      );
      if (data != null) {
        teacherCourses = data;
        teacherCourse = teacherCourses![0];
        print("*/*/*/*/*/*/*///////**********");
      } else {
        print('there is a problem');
      }
    } finally {
      for (int i = 0; i < teacherCourse!.days.length; i++) {
        if (teacherCourse!.days[i].name == 'Saturday') {
          is_sat = true;
        }
        if (teacherCourse!.days[i].name == 'Sunday') {
          is_sun = true;
        }
        if (teacherCourse!.days[i].name == 'Monday') {
          is_mon = true;
        }
        if (teacherCourse!.days[i].name == 'Tuesday') {
          is_tue = true;
        }
        if (teacherCourse!.days[i].name == 'Wednesday') {
          is_wed = true;
        }
        if (teacherCourse!.days[i].name == 'Thursday') {
          is_thu = true;
        }
        if (teacherCourse!.days[i].name == 'Friday') {
          is_fri = true;
        }
      }
      isLoading3(true);
    }
  }
}
