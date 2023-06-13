import 'package:first/Services/GuestInformationService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GuestInformationController extends GetxController {
  late TextEditingController firstnameController,
      lastnameController,
      educationController,
      emailController,
      phoneNumberController;

  @override
  void onInit() {
    firstnameController = TextEditingController();
    lastnameController = TextEditingController();
    educationController = TextEditingController();
    emailController = TextEditingController();
    phoneNumberController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    firstnameController.dispose();
    lastnameController.dispose();
    educationController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  CallGuestInformation() async {
    try {
      var data = await GuestInformationService.GuestInformation(
          'CreateGuest',
          firstnameController.text,
          lastnameController.text,
          phoneNumberController.text,
          emailController.text,
          educationController.text);
      if (data != null) {
        Get.toNamed("/VerificationCode", arguments: emailController);
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}
