import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationTeacherController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    // update();
  }
}
