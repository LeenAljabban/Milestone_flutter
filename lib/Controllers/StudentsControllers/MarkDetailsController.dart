import 'package:first/Services/MarksService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../Models/MarkModel.dart';

class MarkDetailsController extends GetxController {
  Color blue = Color(0xff2D527E);
  late MarksModel detail;

  @override
  void onInit() {
    detail = Get.arguments;
  }
}
