import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

import '../../Services/resignationservice.dart';

class ResignationRequestController extends GetxController {
  Color blue = Color(0xff2D527E);
  late TextEditingController textController;

  @override
  void onInit() {
    textController = TextEditingController();
    super.onInit();
  }

  Future<void> CallSubmitrequest() async {
    try {
      var data = await Resignationsrvice.SubmitResignation(
          'teacher/upload/Leave', textController.text);
      if (data == true) {
        print('submitted Successfully');
        Get.snackbar('Request sent Successfully', ' ',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white);
      } else {
        print('there is a problem');
        Get.snackbar('Request did not send', 'please try again later',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }
    } finally {}
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
