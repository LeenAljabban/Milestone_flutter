import 'package:first/Services/GuestInformationService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unique_identifier/unique_identifier.dart';

import '../../global.dart';

class GuestInformationController extends GetxController {
  late TextEditingController firstnameController,
      lastnameController,
      educationController,
      emailController,
      phoneNumberController;
  String? deviceId;

  @override
  void onInit() {
    _getDeviceId();
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

  Future<void> _getDeviceId() async {
    try {
      final identifier = await UniqueIdentifier.serial;
      deviceId = identifier;
      await saveToSharedPreferences('deviceId', deviceId!);
    } catch (e) {
      print('Error getting device identifier: $e');
    }
  }

  CallGuestInformation() async {
    try {
      var data = await GuestInformationService.GuestInformation(
          'register/guest',
          firstnameController.text,
          lastnameController.text,
          phoneNumberController.text,
          emailController.text,
          educationController.text,
          deviceId);
      if (data != null) {
        Get.toNamed("/VerificationCode", arguments: emailController);
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}
