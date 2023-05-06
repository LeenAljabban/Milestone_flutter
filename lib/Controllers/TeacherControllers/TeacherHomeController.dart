import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeacherHomeController extends GetxController {
  Color blue = Color(0xff2D527E);
  RxInt activeIndex = 0.obs;

  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
}
