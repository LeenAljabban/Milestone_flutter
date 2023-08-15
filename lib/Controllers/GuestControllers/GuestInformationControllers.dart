import 'package:first/Services/GuestInformationService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unique_identifier/unique_identifier.dart';

import '../../global.dart';

class GuestInformationController extends GetxController {
  final GlobalKey<FormState> guestInfoFormKey = GlobalKey<FormState>();
  RxBool send = true.obs;
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
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('deviceId', deviceId!);
    } catch (e) {
      print('Error getting device identifier: $e');
    }
  }

  void check() {
    final isValid = guestInfoFormKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      CallGuestInformation();
    }
  }

  CallGuestInformation() async {
    send(false);
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
        send(true);
      }
    } finally {}
  }
}
