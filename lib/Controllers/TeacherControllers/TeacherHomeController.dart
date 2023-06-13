import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/CourseInfoModel.dart';
import '../../Models/TeacherCourses.dart';
import '../../Services/TeacherHomeService.dart';

class TeacherHomeController extends GetxController {
  Color blue = Color(0xff2D527E);
  RxInt activeIndex = 0.obs;

  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  var isLoading3 = false.obs;
  List<TeacherCourses> teachercourses_list = [];

  void onInit() {
    try {
      CallActiveCourses();
    } finally {}
  }

  CallActiveCourses() async {
    try {
      var data = await TeacherHomeService.getAllCourses(
        'teacher/get/ActiveCourse/forTeacher',
      );
      if (data != null) {
        teachercourses_list.addAll(data);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading3(true);
    }
  }
}
