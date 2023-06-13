import 'package:first/Models/AdvertismentModel.dart';
import 'package:first/Models/UserModel.dart';
import 'package:first/Services/GuestHomeService.dart';
import 'package:first/Services/OurTeacherService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/PhotoModel.dart';

class OueTeacherController extends GetxController {
  Color blue = Color(0xff2D527E);
  var isLoading3 = false.obs;
  List<UserModel> teachers = [];

  @override
  void onInit() {
    CallOurTeachers();
    super.onInit();
  }

  CallOurTeachers() async {
    try {
      var data = await OurTeacherService.OurTeachers(
        'teachers',
      );
      if (data != null) {
        teachers.addAll(data);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading3(true);
    }
  }
}
