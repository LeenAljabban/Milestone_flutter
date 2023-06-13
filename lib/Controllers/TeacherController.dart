import 'package:first/Models/AdvertismentModel.dart';
import 'package:first/Models/UserModel.dart';
import 'package:first/Services/GuestHomeService.dart';
import 'package:first/Services/OurTeacherService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Models/PhotoModel.dart';

class TeacherController extends GetxController {
  Color blue = Color(0xff2D527E);
  var isLoading3 = false.obs;
  UserModel? teacher;

  @override
  void onInit() {
    teacher = Get.arguments;
    super.onInit();
  }
}
