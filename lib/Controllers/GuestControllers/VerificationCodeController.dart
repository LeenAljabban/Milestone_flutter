import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Services/VerificationCoddService.dart';

class VerificationCodeController extends GetxController {
  late TextEditingController PINController, emailController;
  var data;

  @override
  void onInit() {
    PINController = TextEditingController();
    emailController = Get.arguments;
    super.onInit();
  }

  @override
  void dispose() {
    PINController.dispose();

    super.dispose();
  }

  CallGuestInformation() async {
    try {
      var data = await VerificationCodeService.VerificationCode(
          'verify/email', PINController.text, emailController.text);
      if (data != null) {
        Get.toNamed("/PlacementTest");
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}

class VerificationCoddService {}
